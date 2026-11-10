# CALAS Website

Source for the CALAS lab website at City University of Hong Kong. It is built with [Hugo](https://gohugo.io/) and the Wowchemy / Hugo Blox *Research Group* theme, and deployed by Netlify (`netlify.toml`).

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

```bash
hugo server            # http://localhost:1313, live reload
hugo --quiet -d /tmp/calas-build   # one-off build check; no output = OK
```

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

Generated from Prof. Ray C. C. Cheung's DBLP record with the [Hugo Academic CLI](https://github.com/GetRD/academic-file-converter) (`pip install academic`).

```bash
wget https://dblp.org/pid/96/2421.bib -O content/publication/2421.bib
academic import content/publication/2421.bib content/publication/ --verbose
```

Or run both with `bash .claude/skills/calas-website/scripts/update_publications.sh`. This is the safer option: it only replaces `2421.bib` when DBLP really returned BibTeX.

- **If DBLP shows a "Making sure you're not a bot!" page** (it does this to wget/curl at times), the raw `wget` above overwrites `2421.bib` with HTML. Instead, open https://dblp.org/pid/96/2421.bib in a browser, save it as `content/publication/2421.bib`, and run `bash .claude/skills/calas-website/scripts/update_publications.sh --skip-download`.

- Each entry becomes `content/publication/dblp-<key>/index.md` + `cite.bib`.
- Existing entries are skipped, so hand edits (abstract, `url_pdf`, `featured.png`) are kept. Add `--overwrite` only to regenerate everything.
- Check `git status content/publication` to see what was added. Commit as "Update publication".

---

## Theme

Based on the [Hugo Blox Research Group theme](https://github.com/HugoBlox/theme-research-group). See the [Hugo Blox documentation](https://docs.hugoblox.com/) for widgets, configuration (`config/_default/`) and theme updates.
