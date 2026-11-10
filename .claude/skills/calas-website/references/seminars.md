# Seminars

## Location

`content/seminar/YY-MM-DD-<SpeakerSurname>[-Topic]/index.md`, e.g. `26-11-04-Sinha-Roy`. Use the talk date. A poster or slides PDF can sit in the folder (`url_pdf: 'poster.pdf'`).

## Template

```markdown
---
title: "Talk Title Exactly As Given"

event: CALAS Seminar

summary: |
  **Speaker**: Prof. First Last, Associate Professor, University<br>
  **Time**: November 4 2026 (Wed) at 15:30 HKT

date: '2026-11-04T15:30:00Z'          # local HKT clock time written with Z, as in existing posts
date_end: '2026-11-04T17:30:00Z'      # default to 2 hours after the start if no end time is given
all_day: false
publishDate: '2026-11-03T00:00:00Z'   # the day the announcement goes up (usually today)

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
Associate Professor, Full University Name

## Time

November 4 2026 (Wed) at 3:30 - 5:30 pm HKT

## Venue            <!-- include only if a venue / Zoom link is given -->

Room …, City University of Hong Kong

## Abstract

<div style="text-align: justify">
Abstract text, kept as provided (fix obvious typos only).
</div>

## Biography

<div style="text-align: justify">
Biography text in the third person.
</div>
```

Notes:
- Check the weekday against the date (e.g. `date -j -f %Y-%m-%d 2026-11-04 +%a` on macOS).
- `event:` labels used so far: "CALAS Regular Meetings" (most talks up to 2025), "CALAS Seminar" (most 2026 talks), "CALAS Seminar Series", "EE Seminar" (department-hosted). Use whatever the invitation says. If it doesn't say, use "CALAS Seminar", which matches recent posts.
- If the abstract or bio is missing, keep the heading and ask the user, rather than writing one yourself.
