# News posts

## Location and naming

`content/news/YY-MM-DD-Short-Slug/index.md`, e.g. `26-11-09-Ray-ARC-2027-PC`. The folder date is the news date (the `date:` field). The slug uses CamelCase or hyphenated words: `<Person>-<Event>-<What>`.

Images go in the same folder. `featured.jpg` / `featured.png` is the card thumbnail, and extra photos are `image1.jpg`, `image2.jpg`, … If the user supplies image files, copy them in under these names. Attachments like `agenda.pdf` can also sit in the folder and be linked with a relative path.

## Front matter

```yaml
---
title: "Prof. Ray Appointed to the Program Committee of IEEE HOST 2027"
date: 2026-10-23
draft: false
weight: 1
pinned: false
image:              # omit this whole block if there is no featured image
  src: featured.png
  preview_only: true
reading_time: false
share: false
profile: false
---
```

Optional: `tags: [...]` and `categories: ["Achievement"]`. Most posts don't use them, so keep them only when continuing a series that does (the ARC posts do).

## Body skeleton

```markdown
One-sentence teaser shown on the news list.

<!--more-->

![](image1.png)          <!-- optional single image, or the photo grid below -->

<div style="text-align: justify">

Paragraph 1: the news, with full names, the full event name (abbreviation), date and place.

Paragraph 2: context about the venue, award or organisation.

Paragraph 3: significance for the person and CALAS, plus congratulations.

For more information, visit the [EVENT website](https://...).   <!-- only if a real URL is known -->

</div>
```

### Photo grid (for 3 or more photos)

```html
<div style="display: grid; grid-template-columns: repeat(2, minmax(0, 1fr)); gap: 14px; align-items: stretch;">
  <img src="featured.jpg" alt="..." style="grid-row: span 2; width: 100%; height: 100%; object-fit: contain;">
  <img src="image1.jpg" alt="..." style="width: 100%; aspect-ratio: 4 / 3; object-fit: cover;">
  <img src="image2.jpg" alt="..." style="width: 100%; aspect-ratio: 4 / 3; object-fit: cover;">
</div>
```

Write a meaningful `alt` text for every image.

## News groups

Pick the group first. It sets the title pattern and what the paragraphs need to say. Find a recent example with `ls content/news | grep -i <keyword>`.

### 1. Paper acceptance / publication
- Title: "Congratulations to <Names> on <Venue Year> Paper Acceptance!" or "<Name>'s Paper Accepted by <Journal>!"
- Content: the paper title (in quotes or italics), authors (students first by first name), the venue's full name and rank (CCF-A, top-tier, etc. only if you know it's true), and a one-line idea of the paper. Mention minor revisions or poster vs. full paper.
- Examples: `26-11-03-Simon-HPCA-2027`, `26-09-02-Leo-IEEE-TCAD-Accepted`, `26-03-16-Chariot-FCCM-poster-accepted`.

### 2. Professional service (PC member, chair, editor, board)
- Title: "Prof. Ray Appointed to the Program Committee of <Conf Year>" / "Prof. Ray Invited to Join the <Conf Year> Program Committee"
- Content: the symposium's full name and edition ("23rd International Symposium on …"), dates and venue, what the venue covers, and the continued contribution. Link to earlier years of the same series if there are posts about them.
- Examples: `26-11-09-Ray-ARC-2027-PC`, `26-10-23-Ray-HOST-2027-PC`, `26-07-24-ray-aspdac-tpc`, `26-03-19-Ray-FPT-Editors`.

### 3. Awards, honours, grants and funding
- Title: "Congratulations to <Name> on <Award>!" / "<Name> Awarded the <Fellowship>!"
- Content: the award, who gives it, how selective it is, the amount if given, and what it recognises.
- Examples: `26-05-16-Wayne-FCCM-Best-Paper`, `26-04-15-Andy-HKPFS`, `26-10-11-Top-Scientists-Recognition`, `26-06-22-CityUHK-Strategic-Seed-Fund`, patents such as `26-10-27-Wilson-GABES-US-Patent`.

### 4. Member milestones
- Welcome: "Welcome <Name> to the CALAS Team!" Cover their background, programme and supervisor, and research topic. **Also create or update their profile** (see `people.md`).
- PhD oral exam / defence: "Congratulations to Dr. <Name> on Her/His PhD Oral Defence". Cover the department, supervisor, BEng background, research area, and the "Nth PhD graduate of CALAS". Count the existing defence posts and the alumni page to get N, and ask if unsure.
- Offers, internships, exchanges, scholarships, graduation, farewells.
- Examples: `26-10-06-Welcome-Syrus`, `26-10-23-Claire-PhD-Oral-Defense`, `26-04-23-Jeff-PhD-Offer`, `26-10-04-Farewell-Elian-and-Ting`, `26-02-19-Leo-Cornell-Exchange`.
- After a defence or farewell, check whether the person should move to alumni (see `people.md`).

### 5. Events, visits and lab life
- Title: "<Visitor> Visits CALAS" / "<Event> <Year> at CityUHK" / "CALAS Holds …"
- Content: who came and from where, what was discussed, and photos. Conferences the lab attends or organises (RISC-V Hong Kong Day, summits) go here.
- Examples: `26-10-28-Rob-Dimond-Visit`, `26-10-21-RISCV-Hong-Kong-Day-2026`, `26-09-15-First-CALAS-Meeting-TST`.

### 6. Media features
- Title: "Prof. Ray Featured by <Outlet> on <Topic>"
- Content: the outlet, the topic, a short paraphrase (no long quotes), and a link to the original.
- Examples: `26-04-30-Prof-Ray-BBC-Feature`, `26-04-23-Mehdi-Bangladesh-TV-Feature`.

A seminar announcement does **not** go in news. It goes in `content/seminar/` (see `seminars.md`).
