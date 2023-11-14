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
gallery:
- /post/picture-based-drafting-system-for-robot-manipulators/images/collections/20150430_first_controller_testing.webp "2015/04/30 First Manipulator Controller Testing"
- /post/picture-based-drafting-system-for-robot-manipulators/images/collections/20150508_小叮噹.webp "2015/05/08 First Picture Drawing Testing"
- /post/picture-based-drafting-system-for-robot-manipulators/images/collections/20150509_bear.webp "2015/05/09 Rilakkuma"
- /post/picture-based-drafting-system-for-robot-manipulators/images/collections/20150509_ghost_in_the_shell.webp "2015/0509 Ghost in the Shell"
- /post/picture-based-drafting-system-for-robot-manipulators/images/collections/20150509_shark.webp "2015/05/09 Shark"
- /post/picture-based-drafting-system-for-robot-manipulators/images/collections/20150510_mother_day.webp "2015/05/10 Mother's Day"
- /post/picture-based-drafting-system-for-robot-manipulators/images/collections/20150521_B_spline.webp "2015/05/21 B-Spine Proof of Concept"
- /post/picture-based-drafting-system-for-robot-manipulators/images/collections/20150522_戳點.webp "2015/05/22 With More Drawing Pressure Testing"
- /post/picture-based-drafting-system-for-robot-manipulators/images/collections/20150524_B_spline_1.webp "2015/05/24 B-Spine Parameter Tuning - 1"
- /post/picture-based-drafting-system-for-robot-manipulators/images/collections/20150524_B_spline_2.webp "2015/05/24 B-Spine Parameter Tuning - 2"
- /post/picture-based-drafting-system-for-robot-manipulators/images/collections/20150525_without_canny_pic.webp "2015/05/25 Image Edge Detection Testing"
- /post/picture-based-drafting-system-for-robot-manipulators/images/collections/20150526_KUKA_風景.webp "2015/05/26 Scenery Testing"
- /post/picture-based-drafting-system-for-robot-manipulators/images/collections/20150529_name.webp "2015/05/29 Say My Name !!!"
- /post/picture-based-drafting-system-for-robot-manipulators/images/collections/20150601_校長.webp "2015/06/01 More Scenery Testing"
- /post/picture-based-drafting-system-for-robot-manipulators/images/collections/20150613_手稿_結果.webp "2015/06/13 Sketch Testing"
- /post/picture-based-drafting-system-for-robot-manipulators/images/collections/20150613_機械揮毫_結果.webp "2015/06/13 Simple Lines Checking"
- /post/picture-based-drafting-system-for-robot-manipulators/images/collections/20150626_trollface.webp "2015/06/26 Have More Fun, Yooooooo"
---

<!-- for peek -->
I explore merging art and robotics, creating a system that guides a robotic arm to paint like the 
masters. It's about turning sketches into robotic motion, making art with a tech twist​.

<!--more-->
Ever imagined a world where robots wield paintbrushes with the grace of Da Vinci and the passion of 
Van Gogh? Where metal meets canvas and technology romances art? Welcome aboard our imagination train, 
as we unravel our latest masterpiece: a fusion of artistry and machinery. Dive deep into this 
innovative realm where the lines between man-made and machine-made blur, introducing a new age of 
robotic Renaissance!

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

# System Workflow Visualization
Below is a comprehensive flowchart that intricately captures our system's rigorous processing 
sequence. Taking a basic 'Doraemon' sketch as our point of reference, the image first undergoes a 
grayscale transformation to achieve tonal uniformity. Subsequently, an Adaptive Histogram 
Equalization is utilized to augment the image's contrast nuances. This is pursued by a filtering 
process to effectively minimize noise interferences. Thereafter, Adaptive Thresholding segments the 
salient features, paving the way for contour extraction. This extracted framework then enters our 
sophisticated path planning, harnessing the prowess of the B-spline algorithm. Ultimately, the 
Robotic Manipulator executes the drawing, meticulously translating the image processing results 
onto the physical canvas.

{{< image classes="fancybox fig-33" src="/post/picture-based-drafting-system-for-robot-manipulators/images/collections/doraemon/1.webp" group="experiment-1" title="Input" >}}
{{< image classes="fancybox fig-33" src="/post/picture-based-drafting-system-for-robot-manipulators/images/collections/doraemon/2.webp" group="experiment-1" title="Step 1: Gray Scale" >}}
{{< image classes="fancybox fig-33" src="/post/picture-based-drafting-system-for-robot-manipulators/images/collections/doraemon/3.webp" group="experiment-1" title="Step 2: Adaptive Histogram" >}}
{{< image classes="fancybox fig-33" src="/post/picture-based-drafting-system-for-robot-manipulators/images/collections/doraemon/4.webp" group="experiment-1" title="Step 3: Filter" >}}
{{< image classes="fancybox fig-33" src="/post/picture-based-drafting-system-for-robot-manipulators/images/collections/doraemon/5_2.webp" group="experiment-1" title="Step 4: Adaptive Threshold" >}}
{{< image classes="fancybox fig-33" src="/post/picture-based-drafting-system-for-robot-manipulators/images/collections/doraemon/6_2.webp" group="experiment-1" title="Step 5: Contour Extraction" >}}
{{< image classes="fancybox fig-33" src="/post/picture-based-drafting-system-for-robot-manipulators/images/collections/doraemon/7_5.webp" group="experiment-1" title="Step 6: Path Planning w/ B-Spline 3D View" >}}
{{< image classes="fancybox fig-33" src="/post/picture-based-drafting-system-for-robot-manipulators/images/collections/doraemon/7_6.webp" group="experiment-1" title="Step 6: Path Planning w/ B-Spline Zoom in" >}}
{{< image classes="fancybox fig-33" src="/post/picture-based-drafting-system-for-robot-manipulators/images/collections/doraemon/8.webp" group="experiment-1" title="Result" >}}
{{< image classes="clear" >}}


# Demo Insights
<h4 class='text-left'>
    <a href='/post/picture-based-drafting-system-for-robot-manipulators/files/20150803_GuanTingLi_paper.pdf'>Paper</a>
</h4>

Presented below is a detailed demonstration categorized into three progressive stages of complexity. 
Each scenario distinctly showcases the original input image, the meticulously generated 3D movement 
path post-path-planning, and the final artistry rendered by the robotic manipulator. Starting with 
fundamental linear patterns in the first, the subsequent layers delve deeper into intricate 
hand-drawn sketches, culminating in the third, which undertakes the challenge of a detailed 
landscape photograph. This stratified representation not only highlights the precision of our 
algorithms but also the versatile capability of our robotic manipulator in handling varying 
degrees of complexity.

{{< image classes="clear fancybox fig-100" src="/post/picture-based-drafting-system-for-robot-manipulators/images/drawing_demo.webp" group="x1" title="Results" >}}


# Video Archive: Watch the Robotic Manipulator in Action
Dive deep into our trove of recorded experiments, accessible via a series of YouTube links below. 
These videos chronicle the robotic manipulator's journey, capturing its evolutions and refinements 
in real-time. Witness the transformations, the troubleshooting, and the exhilarating moments when 
theory turns into reality. From initial stumbles to its current fluid motions, you'll gain a 
comprehensive insight into the entire developmental process. Grab some popcorn, and embark on 
this visual journey of technological evolution with us!

<div class="yt-grid-container">
    <div>{{< youtube YjKc1ntFEIM >}} 2015/04/29 First Try on Motion Control</div>
    <div>{{< youtube mqg1ZCPStL4 >}} 2015/05/09 System Operating Procedures</div>
    <div>{{< youtube ONyC8J7kdAo >}} 2015/05/09 Image Edge Detection First Try</div>
    <div>{{< youtube ghKzJ27jmhE >}} 2015/05/10 Without Path Planning</div>
    <div>{{< youtube yRbb-1BH_3A >}} 2015/05/22 With B-spline and Correct Motion Control</div>
    <div>{{< youtube O0VAcU5T7bc >}} 2015/06/01 Complex Scenery Drawing 90sec speedup</div>
    <div>{{< youtube ZAvJxzBUlSo >}} 2015/06/03 Complex Scenery Drawing</div>
    <div>{{< youtube soZrOPOBoho >}} 2015/07/25 Simple Image Drawing</div>
</div>


# Gallery: A Historical Glimpse into our Technical Evolution
As we guide you through our visual journey, you'll witness a chronological tapestry of our 
experiments, each timestamped for reference. It commenced humbly with basic robotic manipulator 
controls drawing a simple spiral. The evolution is palpable: from elementary line art like 
'Doraemon', to more intricate sketches like a bear and a shark. An ode to our cultural 
appreciation, there’s even a rendition of the iconic logo from the beloved Japanese anime, 
'Ghost in the Shell'. At this juncture, it’s evident the jagged edges and less fluid lines hinting 
at the growing pains of our system.

Yet, as time marched on, our relentless endeavors to refine both the manipulator's control and 
image processing bore fruit. Gradually, from rendering a seamless 'Doraemon' to masterfully 
capturing intricate landscape sceneries, our system's prowess stands testament to our progress 
and dedication.

