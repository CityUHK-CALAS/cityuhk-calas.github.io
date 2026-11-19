# Publications (from DBLP)

Publications are generated from Prof. Ray C. C. Cheung's DBLP record (pid `96/2421`) with the Hugo Academic CLI (`academic`). The script finds it on `PATH` or in `~/.venvs/academic`; if missing, install with `python3 -m venv ~/.venvs/academic && ~/.venvs/academic/bin/pip install academic`. Downloads use `wget`, or `curl` when `wget` is not installed.

## Update

Run from the repo root:

```bash
bash .claude/skills/calas-website/scripts/update_publications.sh
```

The script runs exactly these two commands:

```bash
wget https://dblp.org/pid/96/2421.bib -O content/publication/2421.bib
academic import content/publication/2421.bib content/publication/ --verbose
```

- The script downloads to a temp file and only replaces `2421.bib` if the result is real BibTeX. DBLP sometimes answers automated requests with an HTML "Making sure you're not a bot!" page. If that happens, the script stops and leaves the old bib in place. Don't try to get around the check. Ask the user to open https://dblp.org/pid/96/2421.bib in their browser and save it as `content/publication/2421.bib`, then run the script with `--skip-download`. Never run the raw `wget … -O 2421.bib` directly, because it overwrites the bib with the HTML page.
- Each entry becomes `content/publication/dblp-<key>/index.md` + `cite.bib`.
- Existing folders are **skipped** (no `--overwrite`), so any hand edits (abstract, PDF links, featured image) are kept. Only use `--overwrite` if the user explicitly wants every page regenerated.
- Afterwards, run `git status --short content/publication` and report how many new publication folders were added and their titles (`grep -h "^title" <new dirs>/index.md`).

## Optional polish on new entries

- `abstract:` and `url_pdf:` can be filled in by hand.
- Add `featured.png` and set `featured: true` to highlight a paper.
- DBLP sometimes lists the same paper twice (CoRR / IACR ePrint preprint and final venue). Mention any obvious duplicates to the user, but don't delete without asking. Once a deletion is approved, `git rm -r` the preprint folder and add its folder name to `scripts/publication_excludes.txt`, otherwise the next import recreates it (the script removes every listed folder after importing). Keep both entries when they are genuinely different papers, e.g. a conference paper and its extended journal version, or two papers at different venues that share a title.

Commit message style: "Update publication".
