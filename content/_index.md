---
# Leave the homepage title empty to use the site title
title:
date: 2025-04-15
type: landing

sections:
  - block: markdown
    content:
      title: |
        CityUHK Architecture Laboratory for Arithmetic and Security
      text: |
        Welcome to the CityUHK Architecture Laboratory for Arithmetic and Security (CALAS). At CALAS, we specialize in cutting-edge research and development focused primarily on RISC-V architectures, emphasizing software/hardware co-design and embedded system development tailored specifically for IoT applications.
        
        Our research spans critical areas such as cryptographic hardware acceleration, including innovative implementations of post-quantum cryptography and fully homomorphic encryption, designed to ensure robust security in the quantum computing era. Additionally, we are actively engaged in AI hardware design, leveraging state-of-the-art FPGA platforms to create flexible, efficient, and secure computational solutions.
        
        CALAS is committed to advancing the fields of Security and Privacy, combining rigorous theoretical foundations with practical hardware implementations to address emerging challenges in technology and information security.
  
  - block: features
    content:
      title: Main Research Interests
      text:
      items:
        - icon: riscv
          icon_pack: custom
          name: RISC-V Architecture
          description:
        - icon: crypto
          icon_pack: custom
          name: Cryptographic Hardware
          description:
        - icon: ai
          icon_pack: custom
          name: AI Hardware Design
          description:
        # - icon: sp
        #   icon_pack: custom
        #   name: Security and Privacy
        #   description:

  - block: collection
    content:
      title: Latest News
      subtitle:
      text:
      count: 5
      filters:
        author: ''
        category: ''
        exclude_featured: false
        publication_type: ''
        tag: ''
      offset: 0
      order: desc
      page_type: post
      design:
        # Choose a listing view
        view: compact
        # Choose how many columns the section has. Valid values: '1' or '2'.
        columns: '1'

  - block: collection
    content:
      title: Latest Publications
      text: ""
      count: 5
      filters:
        folders:
          - publication
        publication_type:
    design:
      view: citation
      columns: '1'

  - block: markdown
    content:
      title:
      subtitle:
      text: |
        {{% cta cta_link="./people/" cta_text="Meet the team →" %}}
    design:
      columns: '1'
---
