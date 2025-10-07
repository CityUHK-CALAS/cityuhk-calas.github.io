---
title: "Energy efficient LLM on RISC-V Edge Devices via Dynamic Voltage and Frequency Scaling"

event: CALAS Regular Meetings

location: P1402
address:
  street: 83 Tat Chee Avenue
  city: Kowloon
  region: Hong Kong
  postcode: '999077'
  country: China

summary: |
  **Speaker**: Yue Wu (Andy), Visiting Student, Imperial College London MSc<br>
  **Time**: September 22 2025 (Mon) at 14:00 HKT


# Talk start and end times.
#   End time can optionally be hidden by prefixing the line with `#`.
date: '2025-09-22T14:00:00Z'
date_end: '2025-09-22T16:00:00Z'
all_day: false

# Schedule page publish date (NOT talk date).
publishDate: '2025-09-15T00:00:00Z'

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
Yue Wu (Andy), Visiting Student <br>
Imperial College London MSc (Prospective PhD Student to CALAS)

## Time
September 22 2025 (Mon) at 14:00 HKT

## Venue
P1402 + Zoom: https://cityu.zoom.us/j/96742093029

## Abstract
<div style="text-align: justify">
The deployment of large language models (LLMs) on edge devices faces critical challenges due to constraints in energy consumption, computational capacity, and operating temperature. Addressing these challenges requires co-optimization across software, system, and hardware layers. Dynamic Voltage and Frequency Scaling (DVFS) is a well-established power management solution in mobile SoCs, dynamically adjusting voltage and frequency based on workload demands to reduce power and thermal overhead. However, existing DVFS strategies are not aware of Large Language Model (LLM) inference workloads, which are often treated as black boxes. 

Fundamentally, LLM inference consists mainly of addition and multiplication operations, and its power demands can drop significantly when processing sparse data. This observation motivates the hypothesis that embedding sparsity-awareness into models could enable more effective DVFS control. Our tentative research will explore this hypothesis from three complementary directions: Software layer: Develop and evaluate optimization techniques to embed sparsity into LLM inference and identify sparsity patterns. System layer: Design a DVFS governor that leverages sparsity patterns for real-time energy and thermal management. Hardware layer: Build an FPGA-based prototype to simulate, validate, and iteratively refine the proposed approach. We anticipate that this work will contribute new cross-layer methodologies to significantly improve the energy efficiency and thermal sustainability of edge-deployed LLMs.
</div>

## Biography
<div style="text-align: justify">
Yue Wu (Andy) received his MSc in Applied Mathematics from Imperial College London and is a prospective PhD student to CALAS. He is an Associate Member of the London Mathematical Society and a former tutor with Cambridge International Education. His research interests span optimization problems, Internet of Things (IoT), and edge AI.
</div>