---
title: "PQNTRU: Acceleration of NTRU-based Schemes via Customized Post-Quantum Processor"

event: CALAS Regular Meetings

location: P4704
address:
  street: 83 Tat Chee Avenue
  city: Kowloon
  region: Hong Kong
  postcode: '999077'
  country: China

summary: |
  **Speaker**: Mr YE Zewen, PhD Candidate, Microelectronics Science and Engineering, Zhejiang University, China<br>
  **Time**: Apr 14 2025 (Mon) at 9:00 HKT


# Talk start and end times.
#   End time can optionally be hidden by prefixing the line with `#`.
date: '2025-04-14T9:00:00Z'
date_end: '2025-04-14T10:30:00Z'
all_day: false

# Schedule page publish date (NOT talk date).
publishDate: '2025-04-11T00:00:00Z'

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
Mr YE Zewen, PhD Candidate <br>
Microelectronics Science and Engineering, Zhejiang University, China

## Time
Apr 14 2025 (Mon) at 9:00 HKT

## Abstract
<div style="text-align: justify">
Post-quantum cryptography (PQC) has rapidly evolved in response to the emergence of quantum computers, with the US National Institute of Standards and Technology (NIST) selecting four finalist algorithms for PQC standardization in 2022, including the Falcon digital signature scheme. The latest round of digital signature schemes introduced Hawk, both based on the NTRU lattice, offering compact signatures, fast generation, and verification suitable for deployment on resource-constrained Internet-of-Things (IoT) devices. Despite the popularity of Crystal-Dilithium and Crystal-Kyber, research on NTRU-based schemes has been limited due to their complex algorithms and operations. Falcon and Hawk’s performance remains constrained by the lack of parallel execution in crucial operations like the Number Theoretic Transform (NTT) and Fast Fourier Transform (FFT), with data dependency being a significant bottleneck. This paper enhances NTRU-based schemes Falcon and Hawk through hardware/software co-design on a customized Single-Instruction-Multiple-Data (SIMD) processor, proposing new SIMD hardware units and instructions to expedite these schemes along with software optimizations to boost performance. Our NTT optimization includes a novel layer merging technique for SIMD architecture to reduce memory accesses, and the use of modular algorithms (Signed Montgomery and Improved Plantard) targets various modulus data widths to enhance performance. We explore applying layer merging to accelerate fixed-point FFT at the SIMD instruction level and devise a dual-issue parser to streamline assembly code organization to maximize dual-issue utilization. A System-on-chip (SoC) architecture is devised to improve the practical application of the processor in real-world scenarios.
</div>

## Biography
<div style="text-align: justify">
Mr Zewen Ye received his bachelor’s degree in microelectronics science and engineering from Zhejiang University in 2020. He is currently pursuing a joint PhD degree at Zhejiang University and the City University of Hong Kong, advised by Prof. Kejie Huang and Prof. Ray C. C. Cheung. His research interests include post-quantum cryptography, hardware design and RISC-V.
</div>
