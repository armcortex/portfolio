---
title: "Picture-Based Drafting System for Robot Manipulators"
date: "2015-08-03"
categories:
- Software
tags:
- Python
- Image Processing
- Motion Planning
- Robot Manipulators
- OpenCV
- B-Spline Algorithm
slug: picture-based-drafting-system-for-robot-manipulators
thumbnailImage: post/picture-based-drafting-system-for-robot-manipulators/images/drawing_cover2.jpg
---

<!-- for peek -->
This paper proposes a system for drawing with a six-axis robotic arm, designed using image processing and the B-Spline curve algorithm. The system solves the problem of drawing path planning. The proposed method is capable of recognizing drawing image information, extracting the graphic contour, and using the B-Spline curve algorithm to refine the drawing curve for smoother rendering. Finally, the system controls the robotic arm to complete the drawing task by transmitting KUKA robotic arm commands in XML format over the network. The method proposed in this paper is a simple, fast, and effective way to control the robotic arm for drawing.

<!--more-->
# Demo
<h4 class='text-left'>
    <a href='/post/picture-based-drafting-system-for-robot-manipulators/files/20150803_GuanTingLi_paper.pdf'>Paper</a>
</h4>

{{< image classes="clear fig-50" src="/post/picture-based-drafting-system-for-robot-manipulators/images/drawing_demo.jpg" title="Results" >}}

<div class="yt-grid-container">
    <div>{{< youtube soZrOPOBoho >}} Simple Image Drawing</div>
    <div>{{< youtube ZAvJxzBUlSo >}} Complex Scenery Drawing</div>
    <div>{{< youtube O0VAcU5T7bc >}} Complex Scenery Drawing 90sec speedup</div>
    <div>{{< youtube yRbb-1BH_3A >}} With B-spline and correct motion control</div>
    <div>{{< youtube ghKzJ27jmhE >}} Without Path Planning</div>
</div>
