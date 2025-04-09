---
# Leave the homepage title empty to use the site title
title:
date: 2022-10-24
type: landing

sections:
  - block: markdown
    content:
      title: |
        CityUHK Architecture Laboratory for Arithmetic and Security
      text: |
        The CityUHK Architecture Laboratory for Arithmetic and Security (CALAS) specializes in the development of advanced System-on-Chip (SoC) technologies tailored for security-sensitive applications. Our research is dedicated to creating innovative designs that integrate high-performance embedded microprocessors with reconfigurable hardware platforms, notably Field-Programmable Gate Arrays (FPGAs). At CALAS, we explore and develop novel methodologies for designing security-aware systems, carefully balancing tradeoffs in time versus area, performance versus security, and energy consumption versus implementation cost. Our ongoing projects encompass secure hardware design—including microprocessors featuring security-enhanced custom instructions—robust datapath architectures, multi-core security solutions, and secure embedded system implementations.
  
  - block: features
    content:
      title: Research Interests
      text:
      items:
      # For available icons, see: https://wowchemy.com/docs/page-builder/#icons
        - icon: reconfigurable-trusted-computing
          icon_pack: custom
          name: Reconfigurable Trusted Computing
          description:
        - icon: vlsi-and-fpga-circuit-design
          icon_pack: custom
          name: VLSI and FPGA Circuit Design
          description:
        - icon: memory-architecture-design
          icon_pack: custom
          name: Memory Architecture Design
          description:
        - icon: cryptographic-hardware-and-algorithms
          icon_pack: custom
          name: Cryptographic Hardware and Algorithms
          description:
        - icon: system-on-chip-integration
          icon_pack: custom
          name: System-on-Chip Integration
          description:
        - icon: system-on-chip-integration
          icon_pack: custom
          name: High-Performance Computing
          description:
        - icon: risc-v-software-hardware-co-design
          icon_pack: custom
          name: RISC-V Software/Hardware Co-Design
          description:

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
      view: card
      columns: '1'

  - block: collection
    content:
      title: Latest Preprints
      text: ""
      count: 5
      filters:
        folders:
          - publication
        publication_type: 'article'
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
