---
name: calas-website
description: Update the CALAS lab website (Hugo / Wowchemy research-group site in this repo). Use this whenever the user wants to add or edit a news post, announce something about a lab member (paper acceptance, award, committee/PC invitation, welcome, PhD defence, visit, farewell), add a seminar/talk, add or update a person's profile, move someone to alumni, or refresh the publication list from DBLP — even if they just paste an email or WeChat message and say "add a news for Ray" or "put this on the site".
---

# CALAS website updates

The site is Hugo + Wowchemy. Everything editable lives under `content/`. Each piece of content is a folder with an `index.md` (or `_index.md` for people) plus its images. The fastest way to get the format right is to copy the closest existing example, so always look at one or two recent siblings before writing.

| Task | Where | Reference |
|---|---|---|
| News post | `content/news/YY-MM-DD-Slug/index.md` | `references/news.md` |
| Seminar | `content/seminar/YY-MM-DD-Speaker/index.md` | `references/seminars.md` |
| Person profile / alumni | `content/authors/<Name>/_index.md`, `content/alumni/index.md` | `references/people.md` |
| Publications | `content/publication/` from DBLP | `references/publications.md` |

Read only the reference file that matches the task.

## General workflow

1. **Work out the facts from what the user pasted.** Users often paste a raw invitation email plus a one-line note, e.g. "thanks Jason. I have served as PC member this year". Pull out the names, the event, the dates, the venue and the role. Don't invent anything that isn't in the paste, such as URLs, award amounts or co-authors. If something important is missing (the date, or who the person is), use the date the user gave, otherwise today, and say what you assumed.
2. **Find the closest existing example.** Run `ls content/news | tail -20` and pick the same kind of post (see the groups in `references/news.md`). Earlier posts about the same recurring event (e.g. ARC, HOST, FCCM) can be found with `grep -ril "<keyword>" content/news`. Mention a recurring role where it's true ("Prof. Ray also served on the ARC 2026 committee").
3. **Write the file** using the template from the reference.
4. **Check the build:** `hugo --quiet -d <scratch dir>`. It should print nothing. Confirm the new slug appears in the output folder. Don't build into `public/`, because that is the deploy output.
5. **Report back** with the path, the title and date, and any assumptions or missing pieces (e.g. no featured image provided). Don't commit unless the user asks. When they do, follow the commit style in `git log` (e.g. "Add October 2026 news posts").

## House style (applies to news, seminars, bios)

- Formal, warm British English: "programme", "defence", "honoured". Dates in the body read like "31 March to 2 April 2027".
- Names: "Prof. Ray C. C. Cheung" on first mention, then "Prof. Ray". Students go by their English name, e.g. "Dr. Claire JIN" on first mention, then "Claire". Family names are often in CAPS in profile titles.
- "CALAS", "City University of Hong Kong" / "CityUHK".
- Body text is wrapped in `<div style="text-align: justify">` … `</div>`, with blank lines inside so Markdown still renders.
- Three or four short paragraphs: what happened → context about the venue or award → what it means for the person or the lab → an optional link line.
