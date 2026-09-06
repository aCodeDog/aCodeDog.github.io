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

<section class="profile-hero">
  <div class="profile-hero__content">
    <p class="profile-hero__eyebrow">Legged Robots / Behavior Foundation Models / World Models</p>
    <h1>Zifan Wang</h1>
    <p class="profile-hero__lead">
      PhD student in Artificial Intelligence at <strong>The Hong Kong University of Science and Technology (Guangzhou)</strong>, supervised by Prof. Junwei Liang. I work on legged robots, including quadrupeds, humanoids, and wheeled-legged robots, with a focus on optimal control, reinforcement learning, loco-manipulation, and robot-centric world modeling.
    </p>
    <div class="profile-hero__actions" aria-label="Profile links">
      <a class="hero-icon-link" href="https://github.com/aCodeDog" aria-label="GitHub"><i class="fab fa-github"></i></a>
      <a class="hero-icon-link" href="https://scholar.google.com/citations?user=GaJXZ-UAAAAJ" aria-label="Google Scholar"><i class="fas fa-graduation-cap"></i></a>
      <a class="hero-icon-link" href="mailto:zwang765@connect.hkust-gz.edu.cn" aria-label="Email"><i class="fas fa-envelope"></i></a>
      <a class="hero-icon-link" href="{{ '/files/cv.pdf' | relative_url }}" aria-label="CV"><i class="fas fa-file-pdf"></i></a>
    </div>
    <div class="profile-hero__notice">
      <i class="fas fa-briefcase"></i>
      <span><strong>Currently on the job market.</strong> Open to roles in visual behavior foundation models and humanoid world models.</span>
    </div>
  </div>
  <div class="profile-hero__notes" aria-label="Research profile highlights">
    <div class="profile-note">
      <span class="profile-note__label">Research</span>
      <span class="profile-note__body">Legged robots, locomotion, reinforcement learning, loco-manipulation</span>
    </div>
    <div class="profile-note">
      <span class="profile-note__label">Venues</span>
      <span class="profile-note__body">RSS, NeurIPS, CoRL, CVPR, IROS</span>
    </div>
    <div class="profile-note">
      <span class="profile-note__label">Stack</span>
      <span class="profile-note__body">Python, C/C++, ROS/ROS2, STM32, Jetson, SolidWorks, Altium Designer</span>
    </div>
    <div class="profile-note">
      <span class="profile-note__label">Service</span>
      <span class="profile-note__body">Reviewer for T-RO, RAL, IROS, CoRL, ICCV, Humanoids</span>
    </div>
  </div>
</section>

# <i class="fas fa-fire"></i> News
- *2026.09*: &nbsp; 🎉 Four papers accepted by **CoRL 2026**: [**Perceptive Behavior Foundation Model**](https://acodedog.github.io/perceptive-bfm/), [**UniLab**](https://unilabsim.github.io/), **MeshMimic**, and **SOLO**.
- *2026*: &nbsp; 🎉 Two papers accepted by the **RSS 2026 Workshop on Whole-body Control and Bimanual Manipulation** ([Perceptive BFM](https://acodedog.github.io/perceptive-bfm/) & [UniLab](https://unilabsim.github.io/)).
- *2026*: &nbsp; New preprint: [**Perceptive Behavior Foundation Model**](https://acodedog.github.io/perceptive-bfm/) ([arXiv](https://arxiv.org/abs/2606.08059), [Code](https://github.com/Mondo-Robotics/PMT)) — adapting human motion priors to robot-centric terrain.
- *2026*: &nbsp; One paper accepted by **RSS 2026**: [**GS-Playground**](https://gsplayground.github.io/) ([Code](https://github.com/discoverse-dev/gs_playground)), a high-throughput photorealistic simulator for vision-informed robot learning.
- *2026*: &nbsp; New preprint: [**UniLab**](https://unilabsim.github.io/) ([Code](https://github.com/Motphys/UniLab)) — a heterogeneous architecture for robot RL beyond GPU-dominant paradigms.
- *2026*: &nbsp; New preprint: [**DiT4DiT**](https://dit4dit.github.io/) ([Code](https://github.com/Mondo-Robotics/DiT4DiT)) — jointly modeling video dynamics and actions for generalizable robot control.
- *2025*: &nbsp; One paper accepted by **NeurIPS 2025** on vision-language-action cross-task generalization.
- *2025*: &nbsp; Two papers accepted by **CoRL 2025** ([OmniPerception](https://acodedog.github.io/OmniPerceptionPages/) & [GLOVER++](https://teleema.github.io/projects/GLOVER++/)).
- *2025*: &nbsp; Two papers accepted by **IROS 2025** ([Diffusion Planner](https://shangjaven.github.io/preference-aligned-diffusion-legged/) & [DISCOVERSE](https://air-discoverse.github.io/)).
- *2025*: &nbsp; One paper accepted by **CVPR 2025** on [mitigating human-robot domain discrepancy](https://jiaming-zhou.github.io/projects/HumanRobotAlign/).
- *2024*: &nbsp; One paper accepted by **CoRL 2024** on [contrastive imitation learning](https://teleema.github.io/projects/Sigma_Agent/).
- *2024*: &nbsp; One paper accepted by **IROS 2024** on [loco-manipulation for wheel-legged robots](https://github.com/aCodeDog/legged-robots-manipulation).

# <i class="fab fa-github"></i> GitHub Stats

{% capture githubStatsRepos %}{% for repo in site.data.github_repos %}{% if repo.include_in_stats %}{{ repo.github }}{% unless forloop.last %},{% endunless %}{% endif %}{% endfor %}{% endcapture %}
<div id="github-stats" class="github-stats-section" data-repos="{{ githubStatsRepos | strip }}">
  <div class="github-stats-summary">
    <div class="github-stat-card floating-card">
      <span class="github-stat-value" data-github-total-stars>--</span>
      <span class="github-stat-label"><i class="fas fa-star"></i> Total Stars</span>
    </div>
    <div class="github-stat-card floating-card">
      <span class="github-stat-value" data-github-total-forks>--</span>
      <span class="github-stat-label"><i class="fas fa-code-branch"></i> Total Forks</span>
    </div>
    <div class="github-stat-card floating-card">
      <span class="github-stat-value">{{ site.data.github_repos | size }}</span>
      <span class="github-stat-label"><i class="fab fa-github"></i> Tracked Repos</span>
    </div>
  </div>

  <div class="github-repo-grid">
    {% for repo in site.data.github_repos %}
    {% if repo.include_in_stats %}
    <div class="github-repo-card floating-card">
      <div class="github-repo-header">
        <h3>{{ repo.title }}</h3>
        <span class="github-repo-type">{{ repo.type }}</span>
      </div>
      <p>{{ repo.description }}</p>
      <div class="github-repo-meta">
        <span><i class="fas fa-star"></i> <span data-github-repo-stars="{{ repo.github }}">--</span></span>
        <span><i class="fas fa-code-branch"></i> <span data-github-repo-forks="{{ repo.github }}">--</span></span>
      </div>
      <div class="links">
        {% if repo.page_url %}
        <a href="{{ repo.page_url }}" class="btn-accent"><i class="fas fa-globe"></i> Project Page</a>
        {% endif %}
        <a href="https://github.com/{{ repo.github }}" class="btn-accent"><i class="fab fa-github"></i> Code</a>
      </div>
    </div>
    {% endif %}
    {% endfor %}
  </div>
</div>

<script>
document.addEventListener('DOMContentLoaded', function() {
  const statsRoot = document.getElementById('github-stats');
  if (!statsRoot) {
    return;
  }

  const repos = (statsRoot.dataset.repos || '')
    .split(',')
    .map(repo => repo.trim())
    .filter(Boolean);

  if (!repos.length || !window.fetch) {
    return;
  }

  const formatter = new Intl.NumberFormat('en-US');
  const setText = (selector, value) => {
    const node = statsRoot.querySelector(selector);
    if (node) {
      node.textContent = formatter.format(value);
    }
  };
  const setRepoMetric = (attribute, repo, value) => {
    statsRoot.querySelectorAll(`[${attribute}]`).forEach(node => {
      if (node.getAttribute(attribute) === repo) {
        node.textContent = formatter.format(value);
      }
    });
  };
  const fetchJson = (url) => (
    fetch(url).then(response => {
      if (!response.ok) {
        throw new Error(`Fetch failed ${response.status}`);
      }
      return response.json();
    })
  );
  const parseShieldCount = (value) => {
    if (typeof value === 'number') {
      return value;
    }

    const text = String(value || '0').trim().toLowerCase().replace(/,/g, '');
    const multiplier = text.endsWith('k') ? 1000 : text.endsWith('m') ? 1000000 : 1;
    const number = parseFloat(text.replace(/[km]$/, ''));
    return Number.isFinite(number) ? Math.round(number * multiplier) : 0;
  };
  const fetchRepoStats = (repo) => (
    fetchJson(`https://api.github.com/repos/${repo}`)
      .then(apiRepo => ({
        full_name: apiRepo.full_name || repo,
        stargazers_count: apiRepo.stargazers_count || 0,
        forks_count: apiRepo.forks_count || 0
      }))
      .catch(() => Promise.all([
        fetchJson(`https://img.shields.io/github/stars/${repo}.json`),
        fetchJson(`https://img.shields.io/github/forks/${repo}.json`)
      ]).then(([stars, forks]) => ({
        full_name: repo,
        stargazers_count: parseShieldCount(stars.value || stars.message),
        forks_count: parseShieldCount(forks.value || forks.message)
      })))
  );

  Promise.allSettled(repos.map(fetchRepoStats)).then(results => {
    const repoStats = results
      .filter(result => result.status === 'fulfilled')
      .map(result => result.value)
      .filter(repo => repo && repo.full_name);

    if (!repoStats.length) {
      statsRoot.classList.add('github-stats-unavailable');
      return;
    }

    const totalStars = repoStats.reduce((sum, repo) => sum + (repo.stargazers_count || 0), 0);
    const totalForks = repoStats.reduce((sum, repo) => sum + (repo.forks_count || 0), 0);

    setText('[data-github-total-stars]', totalStars);
    setText('[data-github-total-forks]', totalForks);

    repoStats.forEach(repo => {
      setRepoMetric('data-github-repo-stars', repo.full_name, repo.stargazers_count || 0);
      setRepoMetric('data-github-repo-forks', repo.full_name, repo.forks_count || 0);
    });
  });
});
</script>

# <i class="fas fa-file-alt"></i> Publications

## Locomotion

<div class='paper-box floating-card'>
  <div class='paper-box-image'><img src='images/papers/perceptive_bfm.jpg' alt='Perceptive Behavior Foundation Model' /></div>
  <div class='paper-box-text'>
    <h3>Perceptive Behavior Foundation Model: Adapting Human Motion Priors to Robot-Centric Terrain</h3>
    <div class="authors"><strong>Z Wang</strong>, Y Li, T Ma, Q Zhang, Y Fan, H Xu, S Yang, J Liang</div>
    <div class="venue">CoRL 2026 &nbsp; <span class="badge">RSS 2026 WCBM Workshop</span> &nbsp; <a href="https://github.com/Mondo-Robotics/PMT/stargazers"><img src="https://img.shields.io/github/stars/Mondo-Robotics/PMT?style=social" alt="GitHub stars" /></a></div>
    <div class="links">
      <a href="https://acodedog.github.io/perceptive-bfm/" class="btn-accent"><i class="fas fa-globe"></i> Project Page</a>
      <a href="https://arxiv.org/abs/2606.08059" class="btn-accent"><i class="fas fa-file-pdf"></i> arXiv</a>
      <a href="https://github.com/Mondo-Robotics/PMT" class="btn-accent"><i class="fab fa-github"></i> Code</a>
    </div>
  </div>
</div>

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
    <div class="venue">CoRL 2026</div>
  </div>
</div>

<div class='paper-box floating-card'>
  <div class='paper-box-text'>
    <h3>SOLO: Stable Omni-terrain Long-Horizon Perceptive Humanoid Locomotion</h3>
    <div class="authors">P Sun, G Han, J Sun, J Ma, Z Su, Z Tao, P Liu, S Shi, W Cui, <strong>Z Wang</strong>, J Yu, W Zhao, et al.</div>
    <div class="venue">CoRL 2026</div>
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

## Manipulation & Imitation Learning

<div class='paper-box floating-card'>
  <div class='paper-box-image'><img src='images/papers/dit4dit.png' alt='DiT4DiT' /></div>
  <div class='paper-box-text'>
    <h3>DiT4DiT: Jointly Modeling Video Dynamics and Actions for Generalizable Robot Control</h3>
    <div class="authors">T Ma, J Zheng, <strong>Z Wang</strong>, C Jiang, A Cui, J Liang, S Yang</div>
    <div class="venue">arXiv 2026 &nbsp; <a href="https://github.com/Mondo-Robotics/DiT4DiT/stargazers"><img src="https://img.shields.io/github/stars/Mondo-Robotics/DiT4DiT?style=social" alt="GitHub stars" /></a></div>
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
    <div class="links">
      <a href="https://teleema.github.io/projects/GLOVER++/" class="btn-accent"><i class="fas fa-globe"></i> Project Page</a>
    </div>
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

## Simulation

<div class='paper-box floating-card'>
  <div class='paper-box-image'><img src='images/papers/gs_playground.png' alt='GS-Playground' /></div>
  <div class='paper-box-text'>
    <h3>GS-Playground: A High-Throughput Photorealistic Simulator for Vision-Informed Robot Learning</h3>
    <div class="authors">Y Jia, H Zhang, Z Zhang, J Wu, M Yu, <strong>Z Wang</strong>, et al.</div>
    <div class="venue">RSS 2026 &nbsp; <a href="https://github.com/discoverse-dev/gs_playground/stargazers"><img src="https://img.shields.io/github/stars/discoverse-dev/gs_playground?style=social" alt="GitHub stars" /></a></div>
    <div class="links">
      <a href="https://gsplayground.github.io/" class="btn-accent"><i class="fas fa-globe"></i> Project Page</a>
      <a href="https://arxiv.org/abs/2604.25459" class="btn-accent"><i class="fas fa-file-pdf"></i> arXiv</a>
      <a href="https://github.com/discoverse-dev/gs_playground" class="btn-accent"><i class="fab fa-github"></i> Code</a>
    </div>
  </div>
</div>

<div class='paper-box floating-card'>
  <div class='paper-box-image'><img src='images/papers/unilab_teaser.png' alt='UniLab' /></div>
  <div class='paper-box-text'>
    <h3>UniLab: A Heterogeneous Architecture for Robot RL Beyond GPU-Dominant Paradigms</h3>
    <div class="authors">Y Jia, Z Cao, M Yu, H Zhang, S Chen, D Jiang, ..., <strong>Z Wang</strong>, et al.</div>
    <div class="venue">CoRL 2026 &nbsp; <span class="badge">RSS 2026 WCBM Workshop</span> &nbsp; <a href="https://github.com/Motphys/UniLab/stargazers"><img src="https://img.shields.io/github/stars/Motphys/UniLab?style=social" alt="GitHub stars" /></a></div>
    <div class="links">
      <a href="https://unilabsim.github.io/" class="btn-accent"><i class="fas fa-globe"></i> Project Page</a>
      <a href="https://arxiv.org/abs/2605.30313" class="btn-accent"><i class="fas fa-file-pdf"></i> arXiv</a>
      <a href="https://github.com/Motphys/UniLab" class="btn-accent"><i class="fab fa-github"></i> Code</a>
    </div>
  </div>
</div>

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

{% for repo in site.data.github_repos %}
{% if repo.show_as_project %}
<div class='paper-box floating-card'>
  <div class='paper-box-text'>
    <h3>{{ repo.title }}</h3>
    <div class="authors"><strong>Zifan Wang</strong></div>
    <div class="venue">Open Source &nbsp; <a href="https://github.com/{{ repo.github }}/stargazers"><img src="https://img.shields.io/github/stars/{{ repo.github }}?style=social" alt="GitHub stars" /></a></div>
    <p>{{ repo.description }}</p>
    <div class="links">
      <a href="https://github.com/{{ repo.github }}" class="btn-accent"><i class="fab fa-github"></i> Code</a>
    </div>
  </div>
</div>
{% endif %}
{% endfor %}

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

Contact: <span class="accent-text">wang_zifan@outlook.com</span> / <span class="accent-text">zwang765@connect.hkust-gz.edu.cn</span> / <span class="accent-text">+86 135 1839 3890</span>
