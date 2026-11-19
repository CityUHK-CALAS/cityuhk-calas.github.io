# CALAS Website

Source for the CALAS lab website at City University of Hong Kong. It is built with [Hugo](https://gohugo.io/) and the Wowchemy / Hugo Blox *Research Group* theme, and deployed to GitHub Pages (<https://cityuhk-calas.github.io>) by the workflow in `.github/workflows/publish.yaml` on every push to `main`. `netlify.toml` is kept for Netlify builds.

All day-to-day edits happen in `content/`:

| Section | Folder | One item = |
|---|---|---|
| News | `content/news/` | `YY-MM-DD-Slug/index.md` + images |
| Seminars | `content/seminar/` | `YY-MM-DD-Speaker/index.md` |
| People | `content/authors/` | `<Name>/_index.md` + `avatar.jpg` |
| Alumni | `content/alumni/index.md` | one `<details>` entry |
| Publications | `content/publication/` | generated from DBLP |

> **Claude Code:** these instructions are also packaged as a project skill at `.claude/skills/calas-website/`, so "add a news for Prof. Ray…" follows the same rules automatically.

## Local preview

Requirements: Hugo 0.170.1 (same version as CI), Go (for Hugo Modules) and Dart Sass. The theme's SCSS needs Dart Sass because current Hugo builds no longer include LibSass.

```bash
brew install hugo go dart-sass
hugo server -D         # http://localhost:1313, live reload
hugo --quiet -d /tmp/calas-build   # one-off build check; no output = OK
```

- `hugo server` keeps running in the foreground after "Web Server is available"; that is normal. Stop it with Ctrl+C.
- After upgrading Hugo (e.g. `brew upgrade hugo`), restart any running `hugo server`. An old server keeps using the removed binary and shows "logged 1 error".
- When upgrading Hugo, also bump `WC_HUGO_VERSION` in `.github/workflows/publish.yaml` (and `HUGO_VERSION` in `netlify.toml`).

## General rules

- Copy the closest existing item and edit it. That is the most reliable template.
- Folder dates use `YY-MM-DD` (e.g. `26-11-09-Ray-ARC-2027-PC`).
- Writing style is formal and warm, in British English ("programme", "defence"). Use "Prof. Ray C. C. Cheung" on first mention, then "Prof. Ray".
- Wrap body text in `<div style="text-align: justify">` … `</div>`, with blank lines inside.
- Only state facts you were given. Don't guess URLs or numbers.

---

## News

`content/news/YY-MM-DD-Slug/index.md`. The thumbnail is `featured.jpg|png`, and extra photos are `image1.jpg`, `image2.jpg`, …

```markdown
---
title: "Prof. Ray Invited to Join the ARC 2027 Program Committee"
date: 2026-11-09
draft: false
weight: 1
pinned: false
image:                 # remove this block if there is no featured image
  src: featured.png
  preview_only: true
reading_time: false
share: false
profile: false
---

One-sentence teaser shown in the news list.

<!--more-->

<div style="text-align: justify">

What happened (who, full event name, date, place).

Context about the venue / award.

Significance and congratulations.

For more information, visit the [Event website](https://...).

</div>
```

For three or more photos, use the 2-column grid used in `content/news/26-10-23-Claire-PhD-Oral-Defense/index.md`.

### News groups

| Group | Typical title | Recent examples |
|---|---|---|
| **1. Paper acceptance** | "Congratulations to *X* on *Venue Year* Paper Acceptance!" | `26-11-03-Simon-HPCA-2027`, `26-09-02-Leo-IEEE-TCAD-Accepted` |
| **2. Professional service** (PC, chair, editor, board) | "Prof. Ray Appointed to the Program Committee of *Conf Year*" | `26-11-09-Ray-ARC-2027-PC`, `26-10-23-Ray-HOST-2027-PC`, `26-07-24-ray-aspdac-tpc` |
| **3. Awards, honours, grants, patents** | "Congratulations to *X* on *Award*!" | `26-05-16-Wayne-FCCM-Best-Paper`, `26-04-15-Andy-HKPFS`, `26-10-27-Wilson-GABES-US-Patent` |
| **4. Member milestones** (welcome, PhD defence, offers, internships, exchanges, graduation, farewell) | "Welcome *X* to the CALAS Team!" / "Congratulations to Dr. *X* on Her PhD Oral Defence" | `26-10-06-Welcome-Syrus`, `26-10-23-Claire-PhD-Oral-Defense`, `26-10-04-Farewell-Elian-and-Ting` |
| **5. Events, visits, lab life** | "*Visitor* Visits CALAS" / "*Event* at CityUHK" | `26-10-28-Rob-Dimond-Visit`, `26-10-21-RISCV-Hong-Kong-Day-2026` |
| **6. Media features** | "Prof. Ray Featured by *Outlet* on *Topic*" | `26-04-30-Prof-Ray-BBC-Feature` |

Welcome posts usually go with a new profile in `content/authors/`. After a defence or farewell, check whether the person moves to alumni.

---

## Seminars

`content/seminar/YY-MM-DD-Speaker/index.md`. Seminars are separate from news.

```markdown
---
title: "Talk Title"

event: CALAS Seminar

summary: |
  **Speaker**: Prof. First Last, Associate Professor, University<br>
  **Time**: November 4 2026 (Wed) at 15:30 HKT

date: '2026-11-04T15:30:00Z'       # HKT clock time, written with Z
date_end: '2026-11-04T17:30:00Z'
all_day: false
publishDate: '2026-11-03T00:00:00Z'

authors: []
tags: []
featured: false
reading_time: false
share: false
profile: false

url_code: ''
url_pdf: ''
url_slides: ''
url_video: ''
slides:
projects:
---

## Speaker

Prof. First Last <br>
Associate Professor, University

## Time

November 4 2026 (Wed) at 3:30 - 5:30 pm HKT

## Abstract

<div style="text-align: justify">
...
</div>

## Biography

<div style="text-align: justify">
...
</div>
```

---

## People

`content/authors/<Name>/_index.md` + `avatar.jpg|png`. The People page groups members by `user_groups` and sorts them by `last_name`.

Valid `user_groups` (defined in `content/people/index.md`):
Team Leaders · Team Advisors · Visiting Professors · Team Faculty Members · Affiliate Faculty Members · Post-doctoral Fellows · PhD Students · Research Assistants · MPhil Students · MSc Students · Final Year Project Students · Undergraduate Students · Researchers · Administration · International Exchange Visitors · Summer Intern Students

```yaml
---
title: Kian LAM                 # English name + FAMILY NAME
first_name: Tsz Hang Kian
last_name: LAM
superuser: false
role: FYP Student, CityUHK
organizations:
  - name: City University of Hong Kong
    url: 'https://www.cityu.edu.hk/'
bio:
interests:
  - Edge Computing and IoT Monitoring
education:
  courses:
    - course: BEng in Computer and Data Engineering
      institution: City University of Hong Kong
      year: 2027
social:
  - icon: linkedin          # github/fab, orcid/ai, google-scholar/ai, globe/fas
    icon_pack: fab
    link: https://www.linkedin.com/in/...
email: ''
highlight_name: false
user_groups:
  - Final Year Project Students
---

Third-person bio: degree, when they joined CALAS, supervisor, research focus.
```

**Role change:** edit `role:` and `user_groups:` in place.

**Moving to alumni:**
1. Set `user_groups: []` in the profile. Keep the folder so publication author links still work.
2. Add a `<details>` entry to `content/alumni/index.md` under the right heading, newest first, and update the "(N in total)" count:

```html
       <details>
        <summary> <strong>Dr. FAMILY Given (English)</strong> (2026 graduate) <span>&#10132;</span> Next Employer </summary>
        <ul>
          <li>Research focus: ... </li>
          <li>Current position: ... </li>
        </ul>
        </details>
```

The alumni page is a single YAML `text: |` block, so keep the indentation the same as the neighbouring entries.

---

## Publications

Generated from Prof. Ray C. C. Cheung's DBLP record with the [Hugo Academic CLI](https://github.com/GetRD/academic-file-converter). Install it once in its own virtual environment (the update script looks for it on `PATH` and then in `~/.venvs/academic`):

```bash
python3 -m venv ~/.venvs/academic && ~/.venvs/academic/bin/pip install academic
```

```bash
wget https://dblp.org/pid/96/2421.bib -O content/publication/2421.bib
academic import content/publication/2421.bib content/publication/ --verbose
```

Or run both with `bash .claude/skills/calas-website/scripts/update_publications.sh`. This is the safer option: it only replaces `2421.bib` when DBLP really returned BibTeX.

- **If DBLP shows a "Making sure you're not a bot!" page** (it does this to wget/curl at times), the raw `wget` above overwrites `2421.bib` with HTML. Instead, open https://dblp.org/pid/96/2421.bib in a browser, save it as `content/publication/2421.bib`, and run `bash .claude/skills/calas-website/scripts/update_publications.sh --skip-download`.

- Each entry becomes `content/publication/dblp-<key>/index.md` + `cite.bib`.
- Existing entries are skipped, so hand edits (abstract, `url_pdf`, `featured.png`) are kept. Add `--overwrite` only to regenerate everything.
- **Duplicates:** DBLP often lists a paper twice (CoRR / IACR ePrint preprint and the published version). Delete the preprint folder with `git rm -r` and add its folder name to `.claude/skills/calas-website/scripts/publication_excludes.txt`; the script removes every listed folder after each import, so it is not recreated. Keep both when they are different papers (conference paper and extended journal version).
- Check `git status content/publication` to see what was added. Commit as "Update publication".

---

## Theme

Based on the [Hugo Blox Research Group theme](https://github.com/HugoBlox/theme-research-group). See the [Hugo Blox documentation](https://docs.hugoblox.com/) for widgets and configuration (`config/_default/`).

- The theme module `blox-bootstrap/v5` (pinned in `go.mod`) is the last Bootstrap build; Hugo Blox has removed it upstream, so it cannot be upgraded further. Moving on would mean migrating to the newer Tailwind-based Hugo Blox theme.
- `layouts/` overrides a few theme templates to replace calls deprecated in Hugo 0.158+/0.163+ (`site.LanguageCode` → `site.Language.Locale`, `.IsNode` → `not .IsPage`). Files there take precedence over the module's copies:
  - from `blox-bootstrap`: `_default/baseof.html`, `_default/rss.xml`, `authors/list.html`, `partials/page_header.html`
  - from `blox-seo`: `index.webmanifest`, `partials/seo_tags.html`
