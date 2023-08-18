---
title: "Doodle Bots: The Next Big Wave in Robo-Artistry 🎨🤖"
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
thumbnailImage: post/picture-based-drafting-system-for-robot-manipulators/images/drawing_cover2.webp
---

<!-- for peek -->
Ever imagined a world where robots wield paintbrushes with the grace of Da Vinci and the passion of 
Van Gogh? Where metal meets canvas and technology romances art? Welcome aboard our imagination train, 
as we unravel our latest masterpiece: a fusion of artistry and machinery. Dive deep into this 
innovative realm where the lines between man-made and machine-made blur, introducing a new age of 
robotic Renaissance!

<!--more-->
Peek below and you'll see our 6-axis robotic manipulator in action, casually sketching out our fave 
lil' blue cat - Doraemon. I mean, who knew tech could have such an artsy flair? 
{{< image classes="clear fancybox fig-100" src="/post/picture-based-drafting-system-for-robot-manipulators/images/drawing_cover2.webp" group="x1" title="Drawing System Platform via Kuka Industrial Robotic Manipulator" >}}


Our system is a culmination of rigorous engineering and computational design to realize the 
potential of robotic drawing:
1. **Robotic Manipulator Kinematics and Control:**
    - **Forward and Inverse Kinematics**: 
The inherent design of the KUKA platform primarily interfaces with the angle data of its six motors. 
Recognizing this, we've pioneered a proprietary endpoint movement control system. With the advent 
of our robotic manipulator controller, the intricate dance of motion begins with simply providing 
six parameters: x, y, z coordinates, and the pitch, roll, and yaw orientations. The controller's 
sophisticated algorithm seamlessly translates these spatial cues into specific angular positions 
for each of the six motors, orchestrating the manipulator's precise movements in space.
    - **Communication Protocols**: 
The system utilizes the UDP protocol for communication, interpreting data in an XML format, 
ensuring efficient and accurate data exchange.
1. **Image Processing for Accurate Contour Recognition:**
    - **Image Pre-processing**: 
The system employs grayscale transformations, filtering techniques, and adaptive thresholding to 
ensure optimal image quality for contour extraction.
    - **Contour Extraction**: 
Our advanced algorithm discerns key pixel points and their inter-relationships to define cohesive 
line segments integral to the drawing.
1. **Path Planning for Drawing:**
    - **Contour Sequencing and Transition Path Planning**: 
Once the contours are identified, a meticulous strategy is formulated for the drawing sequence and 
transitioning between distinct contours.
    - **Refinement with B-Spline Algorithm**: 
Considering the granular nature of pixel-based representations, we've integrated the B-Spline 
algorithm to ensure smoothness in large-scale translations of the drawing.

**In summary**, 
our system proficiently interprets image data, extracts essential artistic contours, refines them 
using the B-Spline algorithm, and translates this data into precise movements for the KUKA robotic 
manipulator. This movement data, encapsulated in XML format, is relayed over a network, ensuring 
that the robotic manipulator executes the drawing task with utmost accuracy and efficiency.


# System Architecture 
Let's delve into the technical architecture of the system:

Our framework is bifurcated into two primary modules: Image Processing and Robotic Manipulator 
Motion Control. Upon the input of an image into the system, the sequence of operations commences. 
The process initiates with adaptive binarization, followed by a filtering phase. Subsequently, 
the system captures the contours, plans the movement path, and employs the B-Spline algorithm to 
ensure the trajectory is smooth.

Transitioning to the robotic manipulator control, it's noteworthy that the system communicates via 
the UDP protocol, transmitting data packets in XML format. This intricate communication sequence 
effectively dictates the end-point movement of the robotic manipulator, facilitating the rendering 
of a precise illustration.

{{< image classes="clear fancybox fig-100" src="/post/picture-based-drafting-system-for-robot-manipulators/images/graphviz/system_architecture/drawing_system_architecture.webp" >}}
<!-- {{< image classes="clear" >}} -->


{{< image classes="fancybox fig-20" src="/post/picture-based-drafting-system-for-robot-manipulators/images/raw/collections/d/1_2.png" group="experiment-1" title="Input" >}}
{{< image classes="fancybox fig-20" src="/post/picture-based-drafting-system-for-robot-manipulators/images/raw/collections/d/2.jpeg" group="experiment-1" title="Step 1: Gray Scale" >}}
{{< image classes="fancybox fig-20" src="/post/picture-based-drafting-system-for-robot-manipulators/images/raw/collections/d/3.jpeg" group="experiment-1" title="Step 2: Adaptive Histogram" >}}
{{< image classes="fancybox fig-20" src="/post/picture-based-drafting-system-for-robot-manipulators/images/raw/collections/d/4.jpeg" group="experiment-1" title="Step 3: Filter" >}}
{{< image classes="clear fancybox fig-20" src="/post/picture-based-drafting-system-for-robot-manipulators/images/raw/collections/d/5_1.jpeg" group="experiment-1" title="Step 4: Adaptive Threshold 1" >}}

{{< image classes="fancybox fig-20" src="/post/picture-based-drafting-system-for-robot-manipulators/images/raw/collections/d/5_2.jpeg" group="experiment-1" title="Step 5: Adaptive Threshold2" >}}
{{< image classes="fancybox fig-20" src="/post/picture-based-drafting-system-for-robot-manipulators/images/raw/collections/d/6_1.jpeg" group="experiment-1" title="Step 6: Contour Extract 1" >}}
{{< image classes="fancybox fig-20" src="/post/picture-based-drafting-system-for-robot-manipulators/images/raw/collections/d/6_2.jpeg" group="experiment-1" title="Step 7: Contour Extract 2" >}}
{{< image classes="fancybox fig-20" src="/post/picture-based-drafting-system-for-robot-manipulators/images/raw/collections/d/7_1.jpeg" group="experiment-1" title="Step 8: Path Planning w/o B-Spline 1" >}}
{{< image classes="clear fancybox fig-20" src="/post/picture-based-drafting-system-for-robot-manipulators/images/raw/collections/d/7_2.jpeg" group="experiment-1" title="Step 9: Path Planning w/o B-Spline 2" >}}

{{< image classes="fancybox fig-20" src="/post/picture-based-drafting-system-for-robot-manipulators/images/raw/collections/d/7_3.jpeg" group="experiment-1" title="Step 10: Path Planning w/o B-Spline 2" >}}
{{< image classes="fancybox fig-20" src="/post/picture-based-drafting-system-for-robot-manipulators/images/raw/collections/d/7_4.jpeg" group="experiment-1" title="Step 11: Path Planning w B-Spline 1" >}}
{{< image classes="fancybox fig-20" src="/post/picture-based-drafting-system-for-robot-manipulators/images/raw/collections/d/7_5.jpeg" group="experiment-1" title="Step 12: Path Planning w B-Spline 2" >}}
{{< image classes="fancybox fig-20" src="/post/picture-based-drafting-system-for-robot-manipulators/images/raw/collections/d/7_6.jpeg" group="experiment-1" title="Step 13: Path Planning w B-Spline 3" >}}
{{< image classes="clear fancybox fig-20" src="/post/picture-based-drafting-system-for-robot-manipulators/images/raw/collections/d/8_2.png" group="experiment-1" title="Result" >}}

{{< image classes="clear" >}}



# Demo Insights
<h4 class='text-left'>
    <a href='/post/picture-based-drafting-system-for-robot-manipulators/files/20150803_GuanTingLi_paper.pdf'>Paper</a>
</h4>

Presented below is a detailed demonstration categorized into three progressive stages of complexity. Each scenario distinctly showcases the original input image, the meticulously generated 3D movement path post-path-planning, and the final artistry rendered by the robotic manipulator. Starting with fundamental linear patterns in the first, the subsequent layers delve deeper into intricate hand-drawn sketches, culminating in the third, which undertakes the challenge of a detailed landscape photograph. This stratified representation not only highlights the precision of our algorithms but also the versatile capability of our robotic manipulator in handling varying degrees of complexity.

{{< image classes="clear fancybox fig-100" src="/post/picture-based-drafting-system-for-robot-manipulators/images/drawing_demo.webp" group="x1" title="Results" >}}


<!-- {{< image classes="fancybox fig-50" src="/post/picture-based-drafting-system-for-robot-manipulators/images/20150509_kuka_mother_day.webp" group="x1" title="Mother's Day" >}} -->
{{< image classes="fancybox fig-50" src="/post/picture-based-drafting-system-for-robot-manipulators/images/raw/new/edit_photo/doraemon.png" group="x1" title="Mother's Day" >}}


{{< image classes="fancybox fig-50" src="/post/picture-based-drafting-system-for-robot-manipulators/images/raw/new/edit_photo/d.png" group="x1" title="Ghost in the shell" >}}
{{< image classes="fancybox fig-50" src="/post/picture-based-drafting-system-for-robot-manipulators/images/raw/new/edit_photo/name.png" group="x1" title="Ghost in the shell" >}}
{{< image classes="clear fancybox fig-50" src="/post/picture-based-drafting-system-for-robot-manipulators/images/raw/new/edit_photo/shark.png" group="x1" title="Ghost in the shell" >}}

<!-- 
{{< image classes="fancybox fig-50" src="/post/picture-based-drafting-system-for-robot-manipulators/images/20150509_ghost_in_the_shell.webp" group="x1" title="Ghost in the shell" >}}
{{< image classes="fancybox fig-50" src="/post/picture-based-drafting-system-for-robot-manipulators/images/drawing_cover.webp" group="x1" title="Soccer Goal" >}}
{{< image classes="fancybox fig-50" src="/post/picture-based-drafting-system-for-robot-manipulators/images/drawing_cover.webp" group="x1" title="Soccer Goal" >}}
 -->

<!-- {{< image classes="clear" >}} -->

<!-- post/picture-based-drafting-system-for-robot-manipulators/images/raw/new/edit_photo -->
<!-- /Users/mcs51/Library/CloudStorage/Dropbox/Ununtu_I9/code/others/20221028_portfolio/portfolio-tranquilpeak-20230306/portfolio/content/post/picture-based-drafting-system-for-robot-manipulators/images/raw/new/edit_photo -->

# Experiment Videos
<div class="yt-grid-container">
    <div>{{< youtube soZrOPOBoho >}} 2015/07/25 Simple Image Drawing</div>
    <div>{{< youtube ZAvJxzBUlSo >}} 2015/06/03 Complex Scenery Drawing</div>
    <div>{{< youtube O0VAcU5T7bc >}} 2015/06/01 Complex Scenery Drawing 90sec speedup</div>
    <div>{{< youtube yRbb-1BH_3A >}} 2015/05/22 With B-spline and Correct Motion Control</div>
    <div>{{< youtube ghKzJ27jmhE >}} 2015/05/10 Without Path Planning</div>
    <div>{{< youtube mqg1ZCPStL4 >}} 2015/05/09 System Operating Procedures</div>
    <div>{{< youtube ONyC8J7kdAo >}} 2015/05/09 Image Edge Detection First Try</div>
    <div>{{< youtube YjKc1ntFEIM >}} 2015/04/29 First Try on Motion Control</div>
    

</div>


