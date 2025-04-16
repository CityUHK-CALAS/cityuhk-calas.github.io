---
title: "ESSPER: Elastic and Scalable FPGA-Cluster System for High-Performance Reconfigurable Computing with Supercomputer Fugaku"

event: CALAS Regular Meetings

location: P1402
address:
  street: 83 Tat Chee Avenue
  city: Kowloon
  region: Hong Kong
  postcode: '999077'
  country: China

summary: |
  **Speaker**: Prof. Kentaro Sano, RIKEN Center for Computational Science, Japan <br>
  **Time**: April 3rd (Monday) at 16:00 HKT


# Talk start and end times.
#   End time can optionally be hidden by prefixing the line with `#`.
date: '2023-04-03T16:00:00Z'
date_end: '2023-04-03T18:00:00Z'
all_day: false

# Schedule page publish date (NOT talk date).
publishDate: '2023-04-03T16:00:00Z'

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
Prof. Kentaro Sano <br> 
RIKEN Center for Computational Science, Japan

## Time
April 3rd (Monday) at 16:00 HKT

## Abstract
<div style="text-align: justify">
At RIKEN Center for Computational Science (R-CCS), we have been developing an experimental FPGA Cluster named “ESSPER (Elastic and Scalable System for high-PErformance Reconfigurable computing),” which is a research platform for reconfigurable HPC. ESSPER is composed of sixteen Intel Stratix 10 SX FPGAs which are connected to each other by a dedicated 100Gbps inter-FPGA network. We have developed our own Shell (SoC) and its software APIs for the FPGAs supporting inter-FPGA communication. The FPGA host servers are connected to a 100Gbps Infiniband switch, which allows distant servers to remotely access the FPGAs by using a software bridged Intel’s OPAE FPGA driver, called R-OPAE. By 100Gbps Infiniband network and R-OPAE, ESSPER is actually connected to the world’s fastest supercomputer, Fugaku, deployed in RIKEN, so that using Fugaku we can program bitstreams onto FPGAs remotely using R-OPAE, and off-load tasks to the FPGAs. In this talk, I introduce our ESSPER’s concept, system stack of hardware and software, programming environment, under-development applications as well as our future prospects for reconfigurable HPC.

</div>

## Biography
<div style="text-align: justify">
Dr. Kentaro Sano is the team leader of the processor research team at RIKEN Center for Computational Science (R-CCS) since 2017, responsible for research and development of future high-performance processors and systems. He is also a visiting professor with an advanced computing system laboratory at Tohoku University. He received his Ph.D. from the graduate school of information sciences, Tohoku University, in 2000. From 2000 until 2018, he was a Research Associate and an Associate Professor at Tohoku University. He was a visiting researcher at the Department of Computing, Imperial College, London, and Maxeler Technology corporation in 2006 and 2007. His research interests include data-driven and spatial-parallel processor architectures such as a coarse-grain reconfigurable array (CGRA), FPGA-based high-performance reconfigurable computing, high-level synthesis compilers and tools for reconfigurable custom computing machines, and system architectures for next-generation supercomputing based on the data-flow computing model.
</div>
