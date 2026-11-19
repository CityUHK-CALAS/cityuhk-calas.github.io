#!/usr/bin/env bash
# Refresh CALAS publications from DBLP (Prof. Ray C. C. Cheung, pid 96/2421).
#   bash update_publications.sh                 # download + import
#   bash update_publications.sh --skip-download # import an already-saved 2421.bib
# Existing publication folders are kept as-is; only new entries are created.
# Any other arguments are passed to `academic import` (e.g. --dry-run, --overwrite).
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"

BIB=content/publication/2421.bib
URL=https://dblp.org/pid/96/2421.bib

if [[ "${1:-}" == "--skip-download" ]]; then
  shift
else
  TMP=$(mktemp)
  if command -v wget >/dev/null; then
    wget -q "$URL" -O "$TMP" || true
  else
    curl -fsSL "$URL" -o "$TMP" || true
  fi
  # DBLP sometimes serves an HTML "not a bot" challenge instead of BibTeX.
  if grep -q '^@' "$TMP" && ! grep -qi '<html' "$TMP"; then
    mv "$TMP" "$BIB"
    echo "Downloaded $(grep -c '^@' "$BIB") BibTeX entries to $BIB"
  else
    rm -f "$TMP"
    echo "ERROR: DBLP did not return BibTeX (probably a bot-check page). $BIB left unchanged." >&2
    echo "Open $URL in a browser, save it as $BIB, then rerun with --skip-download." >&2
    exit 1
  fi
fi

ACADEMIC=$(command -v academic || echo "$HOME/.venvs/academic/bin/academic")
if [[ ! -x "$ACADEMIC" ]]; then
  echo "ERROR: Hugo Academic CLI not found. Install it with:" >&2
  echo "  python3 -m venv ~/.venvs/academic && ~/.venvs/academic/bin/pip install academic" >&2
  exit 1
fi

"$ACADEMIC" import "$BIB" content/publication/ --verbose "$@"

# Remove known duplicates (preprints whose published version is already on the site).
EXCLUDES="$(dirname "$0")/publication_excludes.txt"
if [[ -f "$EXCLUDES" ]]; then
  grep -v '^\s*\(#\|$\)' "$EXCLUDES" | while read -r d; do
    if [[ -d "content/publication/$d" ]]; then
      rm -rf "content/publication/$d"
      echo "Removed excluded duplicate: $d"
    fi
  done
fi

echo
echo "New publication folders:"
git status --short --untracked-files=all content/publication | grep '^?? .*/index.md' | sed 's/^?? //' || echo "(none)"
