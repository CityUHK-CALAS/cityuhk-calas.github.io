---
title: "High-Performance Implementation of ML-DSA on ARMv9-A Architecture"

event: CALAS Regular Meetings

location: P1402
address:
  street: 83 Tat Chee Avenue
  city: Kowloon
  region: Hong Kong
  postcode: '999077'
  country: China

summary: |
  **Speaker**: Hanyu WEI, PhD Candidate, Fudan University<br>
  **Time**: October 6 2025 (Mon) at 14:00 HKT


# Talk start and end times.
#   End time can optionally be hidden by prefixing the line with `#`.
date: '2025-10-06T14:00:00Z'
date_end: '2025-10-06T16:00:00Z'
all_day: false

# Schedule page publish date (NOT talk date).
publishDate: '2025-09-29T00:00:00Z'

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
Hanyu WEI, PhD Candidate <br>
Fudan University (Supervised by Prof. Yunlei ZHAO)

## Time
October 6 2025 (Mon) at 14:00 HKT

## Venue
P1402 + Zoom: https://cityu.zoom.us/j/96742093029

## Abstract
<div style="text-align: justify">
As quantum computing advances, traditional public-key cryptosystems are becoming increasingly vulnerable, prompting a global shift toward post-quantum cryptography (PQC). Integrating PQC into high-performance platforms is a critical objective for both cryptographers and system architects. ARM has become one of the mainstream processor architectures, and the growing adoption of ARMv9-A is accelerating the development of modern workloads such as artificial intelligence and cloud computing. Supported by the Scalable Vector Extension 2 (SVE2) and the Scalable Matrix Extension (SME), ARMv9-A enables high-performance computing and requires cryptographic solutions specifically optimized for its architecture. 
<br>
We present an efficient implementation of ML-DSA, the post-quantum digital signature algorithm standardized by NIST and recommended for general use, on the ARMv9-A architecture. We redesign the polynomial computation pipeline to align with scalable vector and parallel execution capabilities. This includes optimized modular arithmetic and high-throughput polynomial multiplications. To further harness data-level parallelism, we propose to utilize two variants of the number-theoretic transform (NTT): the merged NTT and the decomposed NTT. To the best of our knowledge, this is the first work to implement and evaluate ML-DSA using SVE2 and SME optimizations on real ARMv9-A hardware, providing a practical foundation for future PQC deployments on ARM-based platforms.
</div>

## Biography
<div style="text-align: justify">
Ms. Hanyu WEI received her bachelor's degree in Cyber Science from Southeast University in 2022. She is currently a Ph.D. candidate at Fudan University, advised by Prof. Yunlei Zhao. Her research interests include post-quantum cryptography and cryptographic engineering.
</div>
