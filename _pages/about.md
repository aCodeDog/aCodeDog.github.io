---
permalink: /
title: ""
excerpt: ""
author_profile: true
redirect_from:
  - /about/
  - /about.html
---

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

{% if site.google_scholar_stats_use_cdn %}
{% assign gsDataBaseUrl = "https://cdn.jsdelivr.net/gh/" | append: site.repository | append: "@" %}
{% else %}
{% assign gsDataBaseUrl = "https://raw.githubusercontent.com/" | append: site.repository | append: "/" %}
{% endif %}
{% assign url = gsDataBaseUrl | append: "google-scholar-stats/gs_data_shieldsio.json" %}

<span class='anchor' id='about-me'></span>

My name is <span class="accent-text">Zifan Wang</span>. I am a postgraduate student at <i class="fas fa-university"></i> **The Hong Kong University of Science and Technology (HKUST), Guangzhou Campus**.

<div class="quote-accent">
My primary research focus is on <span class="primary-gradient-text">legged robots</span>, including quadrupeds, humanoids, and wheeled-legged robots. I work on optimal control, reinforcement learning, and loco-manipulation.
</div>

If you have any interesting projects related to legged robots, please contact me! I am very eager to collaborate on creating intelligent robots.

<div class="highlight-blocks">
  <div class="highlight-block floating-card">
    <h3><i class="fas fa-robot"></i> Robotics Researcher</h3>
    <ul>
      <li>Research focus on <span class="accent-text">Legged Robots</span></li>
      <li>Publications at <span class="accent-text">IROS</span>, <span class="accent-text">CoRL</span>, <span class="accent-text">CVPR</span></li>
      <li>Optimal control & <span class="primary-gradient-text">Reinforcement Learning</span></li>
    </ul>
  </div>

  <div class="highlight-block floating-card">
    <h3><i class="fas fa-microchip"></i> Full-Stack Roboticist</h3>
    <ul>
      <li>Software: <span class="accent-text">Python, C/C++, ROS/ROS2</span></li>
      <li>Hardware: <span class="accent-text">STM32, Jetson</span></li>
      <li>Design: <span class="primary-gradient-text">SolidWorks, Altium Designer</span></li>
    </ul>
  </div>

  <div class="highlight-block floating-card">
    <h3><i class="fas fa-users"></i> Academic Service</h3>
    <ul>
      <li>Reviewer for <span class="accent-text">RAL, IROS</span></li>
      <li>Reviewer for <span class="accent-text">CoRL, ICCV</span></li>
      <li>Reviewer for <span class="primary-gradient-text">Humanoids</span></li>
    </ul>
  </div>
</div>

# <i class="fas fa-fire"></i> News
- *2025*: &nbsp; One paper accepted by **CoRL 2025** on omnidirectional collision avoidance for legged locomotion.
- *2025*: &nbsp; One paper accepted by **IROS 2025** on preference aligned diffusion planner for quadrupedal locomotion.
- *2025*: &nbsp; One paper accepted by **IROS 2025** on efficient robot simulation (DISCOVERSE).
- *2025*: &nbsp; One paper accepted by **CVPR 2025** on mitigating human-robot domain discrepancy.

# <i class="fas fa-file-alt"></i> Publications

## Loco-Manipulation

<div class='paper-box floating-card'>
  <div class='paper-box-text'>
    <h3>Legged Robots Manipulation: A Loco-Manipulation Framework for (Wheel-)Legged Robots</h3>
    <div class="authors"><strong>Zifan Wang</strong>, et al.</div>
    <div class="venue">IROS 2024</div>
    <div class="links">
      <a href="https://github.com/aCodeDog/legged-robots-manipulation" class="btn-accent"><i class="fab fa-github"></i> Code</a>
    </div>
  </div>
</div>

<div class='paper-box floating-card'>
  <div class='paper-box-text'>
    <h3>Genesis Frameworks for Legged Robots</h3>
    <div class="authors"><strong>Zifan Wang</strong>, et al.</div>
    <div class="venue">Open Source</div>
    <div class="links">
      <a href="https://github.com/aCodeDog/genesis_legged_gym" class="btn-accent"><i class="fab fa-github"></i> Code</a>
    </div>
  </div>
</div>

<div class='paper-box floating-card'>
  <div class='paper-box-text'>
    <h3>Awesome Loco-Manipulation: A Curated List</h3>
    <div class="authors"><strong>Zifan Wang</strong></div>
    <div class="venue">Open Source</div>
    <div class="links">
      <a href="https://github.com/aCodeDog/awesome-loco-manipulation" class="btn-accent"><i class="fab fa-github"></i> Code</a>
    </div>
  </div>
</div>

## Locomotion

<div class='paper-box floating-card'>
  <div class='paper-box-text'>
    <h3>Omni-Perception: Omnidirectional Collision Avoidance for Legged Locomotion in Dynamic Environments</h3>
    <div class="authors"><strong>Zifan Wang</strong>, et al.</div>
    <div class="venue">CoRL 2025</div>
    <div class="links">
      <a href="https://acodedog.github.io/OmniPerceptionPages/" class="btn-accent"><i class="fas fa-globe"></i> Project Page</a>
      <a href="https://github.com/aCodeDog/OmniPerception" class="btn-accent"><i class="fab fa-github"></i> Code</a>
    </div>
  </div>
</div>

<div class='paper-box floating-card'>
  <div class='paper-box-text'>
    <h3>Preference Aligned Diffusion Planner for Quadrupedal Locomotion Control</h3>
    <div class="authors">Shangja Ven, <strong>Zifan Wang</strong>, et al.</div>
    <div class="venue">IROS 2025</div>
    <div class="links">
      <a href="https://shangjaven.github.io/preference-aligned-diffusion-legged/" class="btn-accent"><i class="fas fa-globe"></i> Project Page</a>
    </div>
  </div>
</div>

<div class='paper-box floating-card'>
  <div class='paper-box-text'>
    <h3>MIP-MPC Framework for Wheeled-Legged Robot Working on Tough Terrain</h3>
    <div class="authors"><strong>Zifan Wang</strong>, et al.</div>
    <div class="venue">ARTS 2023 Poster</div>
  </div>
</div>

## Imitation Learning

<div class='paper-box floating-card'>
  <div class='paper-box-text'>
    <h3>GLOVER: Generalizable Open-Vocabulary Affordance Reasoning for Task-Oriented Grasping</h3>
    <div class="authors">Teli Ma, <strong>Zifan Wang</strong>, et al.</div>
    <div class="venue">Under Review</div>
    <div class="links">
      <a href="https://teleema.github.io/projects/GLOVER/" class="btn-accent"><i class="fas fa-globe"></i> Project Page</a>
    </div>
  </div>
</div>

<div class='paper-box floating-card'>
  <div class='paper-box-text'>
    <h3>DISCOVERSE: Efficient Robot Simulation in Complex High-Fidelity Environments</h3>
    <div class="authors">AIR Lab, <strong>Zifan Wang</strong>, et al.</div>
    <div class="venue">IROS 2025</div>
    <div class="links">
      <a href="https://air-discoverse.github.io/" class="btn-accent"><i class="fas fa-globe"></i> Project Page</a>
    </div>
  </div>
</div>

<div class='paper-box floating-card'>
  <div class='paper-box-text'>
    <h3>Contrastive Imitation Learning for Language-guided Multi-Task Robotic Manipulation</h3>
    <div class="authors">Teli Ma, <strong>Zifan Wang</strong>, et al.</div>
    <div class="venue">CoRL 2024</div>
    <div class="links">
      <a href="https://teleema.github.io/projects/Sigma_Agent/" class="btn-accent"><i class="fas fa-globe"></i> Project Page</a>
    </div>
  </div>
</div>

<div class='paper-box floating-card'>
  <div class='paper-box-text'>
    <h3>Mitigating the Human-Robot Domain Discrepancy in Visual Pre-training for Robotic Manipulation</h3>
    <div class="authors">Jiaming Zhou, <strong>Zifan Wang</strong>, et al.</div>
    <div class="venue">CVPR 2025</div>
    <div class="links">
      <a href="https://jiaming-zhou.github.io/projects/HumanRobotAlign/" class="btn-accent"><i class="fas fa-globe"></i> Project Page</a>
    </div>
  </div>
</div>

# <i class="fas fa-graduation-cap"></i> Educations
- *2024 - Present*: &nbsp;Postgraduate Student at <span class="primary-gradient-text">The Hong Kong University of Science and Technology (Guangzhou)</span>. Research focus on legged robots, optimal control, and reinforcement learning.

# <i class="fas fa-laptop-code"></i> Experience
- Contact: <span class="accent-text">wang_zifan@outlook.com</span> / <span class="accent-text">zwang765@connect.hkust-gz.edu.cn</span>
