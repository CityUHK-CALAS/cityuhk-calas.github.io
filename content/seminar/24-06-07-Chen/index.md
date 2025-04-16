---
title: "The Next Wave of HLS: Fully Automated PyTorch–to–Accelerator Design Flow"

event: CALAS Regular Meetings

location: P1402
address:
  street: 83 Tat Chee Avenue
  city: Kowloon
  region: Hong Kong
  postcode: '999077'
  country: China

summary: |
  **Speaker**: Prof. Deming Chen, Abel Bliss Professor University of Illinois Urbana Champaign (UIUC), USA ACM TRETS, Editor-in-Chief, IEEE Fellow <br>
  **Time**: June 7th 2024 (Fri) at 11:00 HKT


# Talk start and end times.
#   End time can optionally be hidden by prefixing the line with `#`.
date: '2024-06-07T11:00:00Z'
date_end: '2024-06-07T12:00:00Z'
all_day: false

# Schedule page publish date (NOT talk date).
publishDate: '2024-06-03T11:00:00Z'

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
Prof. Deming Chen, Abel Bliss Professor <br> 
University of Illinois Urbana Champaign (UIUC), USA ACM TRETS, Editor-in-Chief, IEEE Fellow

## Time
June 7th 2024 (Fri) at 11:00 HKT

## Abstract
<div style="text-align: justify">
In this talk, we introduce a new design flow, ScaleHLS, that established a new High-Level Synthesis (HLS) solution translating AI models described in PyTorch to customized AI accelerators automatically. By adopting PyTorch as input for AI designs (instead of traditional C/C++ for HLS), the lines of code and design simulation time can be reduced by about 10× and 100×, respectively. Meanwhile, despite being fully automated and able to handle various applications, this new flow achieves a 1.29x higher throughput over DNNBuilder, a state-of-the-art RTL-based neural network accelerator on FPGAs. Such AI model-to-RTL flows pave the way for a new wave of HLS that could drive the high- productivity designs of AI circuits with high density, high-energy efficiency, low cost, and short design cycle. And such high-level model-to-RTL flows can be expanded to other non-AI domains. However, we are also facing existing and new challenges for such HLS solutions, such as ensuring the correctness of the high-level design, accommodating accurate low-level timing/energy information, handling the complexity of 3D circuits and/or chiplet-based design flows, and achieving all these in a highly scalable manner.
</div>

## Biography
<div style="text-align: justify">
Deming Chen is the Abel Bliss Professor of the Grainger College of Engineering at University of Illinois at Urbana-Champaign (UIUC). His current research interests include reconfigurable and heterogenous computing, hybrid cloud, system-level design methodologies, machine learning and acceleration, and hardware security. He has published more than 280 research papers, received 10 Best Paper Awards and one ACM/SIGDA TCFPGA Hall-of-Fame Paper Award, and given more than 150 invited talks. His research has generated high impact, with open-sourced solutions adopted by both academia and industry (e.g., FCUDA, DNNBuilder, CSRNet, SkyNet, ScaleHLS). He is an IEEE Fellow, an ACM Distinguished Speaker, and the Editor-in-Chief of ACM Transactions on Reconfigurable Technology and Systems (TRETS). He is the Director of the AMD-Xilinx Center of Excellence and the Hybrid-Cloud Thrust Co-Lead of the IBM-Illinois Discovery Accelerator Institute at UIUC. He has been involved in several startup companies, such as AutoESL and Inspirit IoT. He received his Ph.D. from the Computer Science Department of UCLA in 2005.
</div>
