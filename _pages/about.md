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

My name is <span class="accent-text">Zifan Wang</span>. I am a PhD student in Artificial Intelligence at <i class="fas fa-university"></i> **The Hong Kong University of Science and Technology (Guangzhou)**, supervised by Prof. Junwei Liang.

<div class="quote-accent">
My primary research focus is on <span class="primary-gradient-text">legged robots</span>, including quadrupeds, humanoids, and wheeled-legged robots. I work on optimal control, reinforcement learning, and loco-manipulation.
</div>

If you have any interesting projects related to legged robots, please contact me! I am very eager to collaborate on creating intelligent robots.

<div class="highlight-blocks">
  <div class="highlight-block floating-card">
    <h3><i class="fas fa-robot"></i> Robotics Researcher</h3>
    <ul>
      <li>Research focus on <span class="accent-text">Legged Robots</span></li>
      <li>Publications at <span class="accent-text">NeurIPS</span>, <span class="accent-text">CoRL</span>, <span class="accent-text">CVPR</span>, <span class="accent-text">IROS</span></li>
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
- *2025*: &nbsp; New preprint: **DiT4DiT** — jointly modeling video dynamics and actions for generalizable robot control.
- *2025*: &nbsp; One paper accepted by **NeurIPS 2025** on vision-language-action cross-task generalization.
- *2025*: &nbsp; Two papers accepted by **CoRL 2025** (OmniPerception & GLOVER++).
- *2025*: &nbsp; Two papers accepted by **IROS 2025** (Diffusion Planner & DISCOVERSE).
- *2025*: &nbsp; One paper accepted by **CVPR 2025** on mitigating human-robot domain discrepancy.
- *2024*: &nbsp; One paper accepted by **CoRL 2024** on contrastive imitation learning.
- *2024*: &nbsp; One paper accepted by **IROS 2024** on loco-manipulation for wheel-legged robots.

# <i class="fas fa-file-alt"></i> Publications

## Manipulation & Imitation Learning

<div class='paper-box floating-card'>
  <div class='paper-box-image'><img src='images/papers/dit4dit.png' alt='DiT4DiT' /></div>
  <div class='paper-box-text'>
    <h3>DiT4DiT: Jointly Modeling Video Dynamics and Actions for Generalizable Robot Control</h3>
    <div class="authors">T Ma, J Zheng, <strong>Z Wang</strong>, C Jiang, A Cui, J Liang, S Yang</div>
    <div class="venue">arXiv 2025</div>
    <div class="links">
      <a href="https://dit4dit.github.io/" class="btn-accent"><i class="fas fa-globe"></i> Project Page</a>
      <a href="https://arxiv.org/abs/2603.10448" class="btn-accent"><i class="fas fa-file-pdf"></i> arXiv</a>
      <a href="https://github.com/Mondo-Robotics/DiT4DiT" class="btn-accent"><i class="fab fa-github"></i> Code</a>
    </div>
  </div>
</div>

<div class='paper-box floating-card'>
  <div class='paper-box-image'><img src='images/papers/vla_cross_task.png' alt='VLA Cross-Task' /></div>
  <div class='paper-box-text'>
    <h3>Exploring the Limits of Vision-Language-Action Manipulations in Cross-Task Generalization</h3>
    <div class="authors">J Zhou, K Ye, J Liu, T Ma, <strong>Z Wang</strong>, R Qiu, KY Lin, Z Zhao, J Liang</div>
    <div class="venue">NeurIPS 2025</div>
  </div>
</div>

<div class='paper-box floating-card'>
  <div class='paper-box-image'><img src='images/papers/glover_pp.jpg' alt='GLOVER++' /></div>
  <div class='paper-box-text'>
    <h3>GLOVER++: Unleashing the Potential of Affordance Learning from Human Behaviors for Robotic Manipulation</h3>
    <div class="authors">T Ma, J Zheng, <strong>Z Wang</strong>, Z Gao, J Zhou, J Liang</div>
    <div class="venue">CoRL 2025</div>
  </div>
</div>

<div class='paper-box floating-card'>
  <div class='paper-box-image'><img src='images/papers/contrastive_il.png' alt='Contrastive IL' /></div>
  <div class='paper-box-text'>
    <h3>Contrastive Imitation Learning for Language-guided Multi-Task Robotic Manipulation</h3>
    <div class="authors">T Ma, J Zhou, <strong>Z Wang</strong>, R Qiu, J Liang</div>
    <div class="venue">CoRL 2024</div>
    <div class="links">
      <a href="https://teleema.github.io/projects/Sigma_Agent/" class="btn-accent"><i class="fas fa-globe"></i> Project Page</a>
    </div>
  </div>
</div>

<div class='paper-box floating-card'>
  <div class='paper-box-image'><img src='images/papers/cvpr_human_robot.png' alt='Human-Robot Domain' /></div>
  <div class='paper-box-text'>
    <h3>Mitigating the Human-Robot Domain Discrepancy in Visual Pre-training for Robotic Manipulation</h3>
    <div class="authors">J Zhou, T Ma, KY Lin, <strong>Z Wang</strong>, R Qiu, J Liang</div>
    <div class="venue">CVPR 2025</div>
    <div class="links">
      <a href="https://jiaming-zhou.github.io/projects/HumanRobotAlign/" class="btn-accent"><i class="fas fa-globe"></i> Project Page</a>
    </div>
  </div>
</div>

<div class='paper-box floating-card'>
  <div class='paper-box-image'><img src='images/papers/glover.png' alt='GLOVER' /></div>
  <div class='paper-box-text'>
    <h3>GLOVER: Generalizable Open-Vocabulary Affordance Reasoning for Task-Oriented Grasping</h3>
    <div class="authors">T Ma, <strong>Z Wang</strong>, J Zhou, M Wang, J Liang</div>
    <div class="venue">CoRL 2024 GenPriors Workshop <span class="badge">Best Paper Award</span></div>
    <div class="links">
      <a href="https://teleema.github.io/projects/GLOVER/" class="btn-accent"><i class="fas fa-globe"></i> Project Page</a>
    </div>
  </div>
</div>

## Loco-Manipulation

<div class='paper-box floating-card'>
  <div class='paper-box-image'><img src='images/papers/loco_manipulation.png' alt='Loco-Manipulation' /></div>
  <div class='paper-box-text'>
    <h3>Arm-Constrained Curriculum Learning for Loco-Manipulation of a Wheel-Legged Robot</h3>
    <div class="authors"><strong>Z Wang</strong>, Y Jia, L Shi, H Wang, H Zhao, X Li, J Zhou, J Ma, G Zhou</div>
    <div class="venue">IROS 2024 <span class="badge">Oral</span></div>
    <div class="links">
      <a href="https://github.com/aCodeDog/legged-robots-manipulation" class="btn-accent"><i class="fab fa-github"></i> Code</a>
    </div>
  </div>
</div>

## Locomotion

<div class='paper-box floating-card'>
  <div class='paper-box-image'><img src='images/papers/omni_perception.png' alt='Omni-Perception' /></div>
  <div class='paper-box-text'>
    <h3>Omni-Perception: Omnidirectional Collision Avoidance for Legged Locomotion in Dynamic Environments</h3>
    <div class="authors"><strong>Z Wang</strong>, T Ma, Y Jia, X Yang, J Zhou, W Ouyang, Q Zhang, J Liang</div>
    <div class="venue">CoRL 2025 <span class="badge">Oral</span></div>
    <div class="links">
      <a href="https://acodedog.github.io/OmniPerceptionPages/" class="btn-accent"><i class="fas fa-globe"></i> Project Page</a>
      <a href="https://github.com/aCodeDog/OmniPerception" class="btn-accent"><i class="fab fa-github"></i> Code</a>
    </div>
  </div>
</div>

<div class='paper-box floating-card'>
  <div class='paper-box-image'><img src='images/papers/humanoid_locomotion.jpg' alt='Humanoid Locomotion' /></div>
  <div class='paper-box-text'>
    <h3>End-to-End Humanoid Robot Safe and Comfortable Locomotion Policy</h3>
    <div class="authors"><strong>Z Wang</strong>, X Yang, J Zhao, J Zhou, T Ma, Z Gao, A Ajoudani, J Liang</div>
    <div class="venue">arXiv 2025</div>
  </div>
</div>

<div class='paper-box floating-card'>
  <div class='paper-box-image'><img src='images/papers/diffusion_planner.jpg' alt='Diffusion Planner' /></div>
  <div class='paper-box-text'>
    <h3>Preference Aligned Diffusion Planner for Quadrupedal Locomotion Control</h3>
    <div class="authors">X Yuan, Z Shang, <strong>Z Wang</strong>, C Wang, Z Shan, M Zhu, C Bai, X Li, W Wan, et al.</div>
    <div class="venue">IROS 2025</div>
    <div class="links">
      <a href="https://shangjaven.github.io/preference-aligned-diffusion-legged/" class="btn-accent"><i class="fas fa-globe"></i> Project Page</a>
    </div>
  </div>
</div>

<div class='paper-box floating-card'>
  <div class='paper-box-image'><img src='images/papers/meshmimic.jpg' alt='MeshMimic' /></div>
  <div class='paper-box-text'>
    <h3>MeshMimic: Geometry-Aware Humanoid Motion Learning through 3D Scene Reconstruction</h3>
    <div class="authors">Q Zhang, J Ma, P Liu, S Shi, Z Su, <strong>Z Wang</strong>, J Sun, W Cui, J Yu, G Han, et al.</div>
    <div class="venue">arXiv 2026</div>
  </div>
</div>

## Simulation

<div class='paper-box floating-card'>
  <div class='paper-box-image'><img src='images/papers/discoverse.jpg' alt='DISCOVERSE' /></div>
  <div class='paper-box-text'>
    <h3>DISCOVERSE: Efficient Robot Simulation in Complex High-Fidelity Environments</h3>
    <div class="authors">Y Jia, G Wang, Y Dong, J Wu, Y Zeng, H Lin, <strong>Z Wang</strong>, H Ge, W Gu, K Ding, et al.</div>
    <div class="venue">IROS 2025 <span class="badge">Oral</span></div>
    <div class="links">
      <a href="https://air-discoverse.github.io/" class="btn-accent"><i class="fas fa-globe"></i> Project Page</a>
    </div>
  </div>
</div>

<div class='paper-box floating-card'>
  <div class='paper-box-image'><img src='images/papers/fggs_lidar.png' alt='FGGS-LiDAR' /></div>
  <div class='paper-box-text'>
    <h3>FGGS-LiDAR: Ultra-Fast, GPU-Accelerated Simulation from General 3DGS Models to LiDAR</h3>
    <div class="authors">J Wu, Y Jia, Y Yan, Z Chen, T Tan, <strong>Z Wang</strong>, G Wang</div>
    <div class="venue">arXiv</div>
  </div>
</div>

## Open Source Projects

<div class='paper-box floating-card'>
  <div class='paper-box-text'>
    <h3>Genesis Frameworks for Legged Robots</h3>
    <div class="authors"><strong>Zifan Wang</strong></div>
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

# <i class="fas fa-graduation-cap"></i> Education

<div class="highlight-blocks">
  <div class="highlight-block floating-card">
    <h3><i class="fas fa-user-graduate"></i> PhD in Artificial Intelligence</h3>
    <ul>
      <li><span class="accent-text">HKUST (Guangzhou)</span></li>
      <li>2024 - 2027 (Expected)</li>
      <li>Supervisor: <span class="primary-gradient-text">Junwei Liang</span></li>
    </ul>
  </div>

  <div class="highlight-block floating-card">
    <h3><i class="fas fa-robot"></i> MSc in Robotics & Autonomous Systems</h3>
    <ul>
      <li><span class="accent-text">HKUST (Guangzhou)</span></li>
      <li>2022 - 2024, GPA: 3.84</li>
      <li>Supervisors: <span class="primary-gradient-text">Ming Liu, Jun Ma</span></li>
    </ul>
  </div>

  <div class="highlight-block floating-card">
    <h3><i class="fas fa-cog"></i> BEng in Automation</h3>
    <ul>
      <li><span class="accent-text">Southwest Jiaotong University</span></li>
      <li>2017 - 2021, Score: 85.45</li>
      <li><span class="primary-gradient-text">School of Information Science and Technology</span></li>
    </ul>
  </div>
</div>

# <i class="fas fa-award"></i> Honors & Awards
- <span class="accent-text">First Class Scholarship</span> — Southwest Jiaotong University
- <span class="accent-text">The Enterprise Scholarship</span> — Southwest Jiaotong University
- <span class="accent-text">Outstanding Students Cadre</span> — Southwest Jiaotong University

# <i class="fas fa-trophy"></i> Competitions

<div class='paper-box floating-card'>
  <div class='paper-box-text'>
    <h3>National Second Prize — ABU Robocon (Equestrian Simulation)</h3>
    <div class="venue">Asia-Pacific Broadcasting Union Robocon, 2020</div>
    <p>Developed Simulink simulation system and co-simulation with Adams for quadruped robot maneuvers.</p>
  </div>
</div>

<div class='paper-box floating-card'>
  <div class='paper-box-text'>
    <h3>National Third Prize — RoboMaster (DJI)</h3>
    <div class="venue">RoboMaster, 2020</div>
    <p>Developed LQR-based control framework, image processing and LiDAR sensing algorithms, sensor fusion, and hardware circuit design.</p>
  </div>
</div>

<div class='paper-box floating-card'>
  <div class='paper-box-text'>
    <h3>National Second Prize — ABU Robocon</h3>
    <div class="venue">Asia-Pacific Broadcasting Union Robocon, 2019</div>
    <p>Responsible for quadruped robot leg motion control and upper structure ejection/gripping device control.</p>
  </div>
</div>

<div class='paper-box floating-card'>
  <div class='paper-box-text'>
    <h3>Provincial Second Prize — Engineering Training Competition</h3>
    <div class="venue">National College Student Engineering Training Competition, 2019</div>
    <p>Hardware circuit design, sensor data fusion with orthogonal code disk and DT35 laser ranging module.</p>
  </div>
</div>

<div class='paper-box floating-card'>
  <div class='paper-box-text'>
    <h3>Provincial Third Prize — Electronics Design Contest</h3>
    <div class="venue">National Undergraduate Electronics Design Contest, 2019</div>
    <p>Electromagnetic gun hardware circuit design, BP neural network-based control algorithm, and UCOS-III RTOS porting on ARM processor.</p>
  </div>
</div>

---

Contact: <span class="accent-text">wang_zifan@outlook.com</span> / <span class="accent-text">zwang765@connect.hkust-gz.edu.cn</span>
