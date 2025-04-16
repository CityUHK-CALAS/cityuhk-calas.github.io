---
title: "Revealing the Weakness of Addition Chain-based Masked SBox Implementations"

event: CALAS Regular Meetings

location: P1402
address:
  street: 83 Tat Chee Avenue
  city: Kowloon
  region: Hong Kong
  postcode: '999077'
  country: China

summary: |
  **Speaker**: Dr. Jingdian MING, Doctoral Researcher, Jiaxing Research Institute, Zhejiang University <br>
  **Time**: May 14th 2024 (Tue) at 9:00 HKT


# Talk start and end times.
#   End time can optionally be hidden by prefixing the line with `#`.
date: '2024-05-14T09:00:00Z'
date_end: '2024-05-14T11:00:00Z'
all_day: false

# Schedule page publish date (NOT talk date).
publishDate: '2024-05-10T11:00:00Z'

authors: []
tags: []

# Is this a featured talk? (true/false)
featured: false
reading_time: false
share: false
profile: false

url_code: ''
url_pdf: ''
url_slides: ''
url_video: ''

# Markdown Slides (optional).
#   Associate this talk with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
slides:

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects:
---
## Speaker
Dr. Jingdian MING, Doctoral Researcher <br> 
Jiaxing Research Institute, Zhejiang University

## Time
May 14th 2024 (Tue) at 9:00 HKT

## Abstract
<div style="text-align: justify">
Addition chain is a well-known approach for implementing higher-order masked SBoxes. However, this approach induces more computations of intermediate monomials, which in turn leaks more information related to the sensitive variables and may consequently decrease its side-channel resistance. Thus, we investigate the resilience of monomial computations with respect to side-channel analysis. We select several representative addition chain implementations, based on their theoretical resilience, that demonstrate the strongest and weakest resistance to side-channel analysis. In practical experiments based on an ARM Cortex-M4 architecture, we collect power and electromagnetic traces, considering different noise levels. The results reveal that the weakest masked SBox implementation exhibits a side-channel resistance nearly identical to an unprotected implementation. Moreover, we find that some monomials with smaller output size leak more sensitive information than the SBox output. This finding applies to various other masking schemes, including inner product masking.
</div>

## Biography
<div style="text-align: justify">
Jingdian MING received the Ph.D. degree in 2022 from the School of Cyber Security, University of Chinese Academy of Sciences. He is currently an Associate Researcher at Jiaxing Research Institute, Zhejiang University. His main research interests include hardware security, cryptographic engineering, and side-channel analysis. Over the years, he has published multiple papers in hardware security, including TIFS, TCHES, and DATE.
</div>
