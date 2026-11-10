# People and alumni

## Profiles

Each person is `content/authors/<Folder Name>/_index.md` plus `avatar.jpg|png|jpeg` (a square-ish photo, which must be named `avatar.*`). The folder name is how publications and news link to the person, so pick a readable one (e.g. `Kian Lam`, `Jason`, `Ezio LU`) and don't rename existing folders.

The People page (`content/people/index.md`) lists people automatically by `user_groups`, sorted by `last_name`. These are the valid groups, exactly as spelled:

```
Team Leaders, Team Advisors, Visiting Professors, Team Faculty Members,
Affiliate Faculty Members, Post-doctoral Fellows, PhD Students,
Research Assistants, MPhil Students, MSc Students,
Final Year Project Students, Undergraduate Students, Researchers,
Administration, International Exchange Visitors, Summer Intern Students
```

A new group only appears on the site if it is also added to `content/people/index.md`.

### Template

```yaml
---
# Display name
title: Kian LAM            # English name + FAMILY NAME in caps

# Full Name (for SEO)
first_name: Tsz Hang Kian
last_name: LAM             # controls sort order

# Is this the primary user of the site?
superuser: false

# Role/position
role: Ph.D. Student        # e.g. Ph.D. Candidate, MPhil Student, Post-doctoral Fellow, FYP Student, CityUHK

# Organizations/Affiliations
organizations:
  - name: City University of Hong Kong
    url: 'https://www.cityu.edu.hk/'

bio:

interests:
  - Topic one
  - Topic two

education:
  courses:
    - course: BEng in ...
      institution: ...
      year: 2027

social:
  - icon: linkedin
    icon_pack: fab
    link: https://www.linkedin.com/in/...
  # github: icon_pack fab | orcid: icon_pack ai | google-scholar: icon_pack ai | globe: icon_pack fas
  # email: icon envelope, icon_pack fas, link 'mailto:...' (keep commented out unless the person wants it public)

email: ''
highlight_name: false

user_groups:
  - PhD Students
---

Third-person bio in one or two paragraphs: degree and university, when they joined CALAS, supervisor (Prof. Ray C. C. Cheung, plus any co-supervisor), and research focus.
```

Only include the social links that were provided. Leave out empty ones rather than adding placeholders.

## Changing someone's role

Edit `role:` and `user_groups:` in place, e.g. MPhil → PhD, or PhD Student → Post-doctoral Fellow after a defence. Keep the bio consistent with the new role.

## Moving someone to alumni

1. In their profile, set `user_groups: []` (or remove the entries). This takes them off the People page but keeps their author page for publication links. Don't delete the folder.
2. Add an entry to `content/alumni/index.md` in the right section (`## **PhD Awardees (N in total)**`, postdoc, MPhil, etc.), newest first, and bump the count in the heading:

```html
       <details>
        <summary> <strong>Dr. FAMILY Given (English)</strong> (2026 graduate) <span>&#10132;</span> Next Employer </summary>
        <ul>
          <li>Research focus: ... </li>
          <li>Current position: ... </li>
        </ul>
        </details>
```

The alumni page is one big YAML block scalar (`text: |`). Keep the indentation consistent with the neighbouring entries, or the YAML breaks. Run the Hugo build to confirm.
