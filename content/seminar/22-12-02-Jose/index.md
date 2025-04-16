---
title: "Edge Intelligence: Hardware Challenges and Opportunities"

event: CALAS Regular Meetings

location: P1402
address:
  street: 83 Tat Chee Avenue
  city: Kowloon
  region: Hong Kong
  postcode: '999077'
  country: China

summary: |
  **Speaker**: Prof. Jose Nunez-Yanez, Linköping University, Sweden <br>
  **Time**: Dec 2nd (Friday) at 16:00 HKT


# Talk start and end times.
#   End time can optionally be hidden by prefixing the line with `#`.
date: '2022-12-02T16:00:00Z'
date_end: '2022-12-02T18:00:00Z'
all_day: false

# Schedule page publish date (NOT talk date).
publishDate: '2022-11-25T16:00:00Z'

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
Prof. Jose Nunez-Yanez <br> 
Linköping University, Sweden

## Time
Dec 2nd (Friday) at 16:00 HKT

## Abstract
<div style="text-align: justify">
In this talk we will initially discuss some basic edge computing concepts followed by the hardware challenges and opportunities of performing deep learning at the edge. We will then present the FADES (Fused Architecture for DEnse and Sparse tensor processing) heterogeneous architecture focusing on its application to Graph neural networks (GNN) acceleration. GNNs can deliver high accuracy when applied to non-Euclidean data in which data elements do not fit into a regular structure. They combine sparse and dense data characteristics and this, in turn, results in a combination of compute and bandwidth intensive requirements challenging to meet with general purpose hardware. FADES is a highly configurable architecture fully described with high-level synthesis integrated in TensorFlow Lite and Pytorch. It creates a dataflow of dataflows with multiple hardware treads and compute units that optimize data access and processing element utilization. This enables fine-grained stream hybrid processing of sparse and dense tensors suitable for multi-layer graph neural networks.
</div>

## Biography
<div style="text-align: justify">
Prof. Nunez-Yanez is a professor in hardware architectures for Machine Learning at Linköping University with over 20 years of experience in the design of high-performance embedded hardware. He holds a PhD in hardware-based parallel data compression from the University of Loughborough, UK, with three patents awarded on the topic of high-speed parallel data compression. Previously to joining Linköping University he was a reader (associate professor) at Bristol University, UK. He spent a few years working in industry at ST Micro (Milan), ARM (Cambridge) and Sensata Systems (Swindon) with Marie Curie and Royal Society fellowships. His main area of expertise is in the design of hardware architectures and heterogenous systems for signal processing and machine learning with a focus on run-time adaptation, high-performance via parallelism and energy-efficiency.
</div>
