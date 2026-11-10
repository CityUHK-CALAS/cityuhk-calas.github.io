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
  wget -q "$URL" -O "$TMP" || true
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

academic import "$BIB" content/publication/ --verbose "$@"

echo
echo "New publication folders:"
git status --short --untracked-files=all content/publication | grep '/index.md' | sed 's/^?? //' || echo "(none)"
