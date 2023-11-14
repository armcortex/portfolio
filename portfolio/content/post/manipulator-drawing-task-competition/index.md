---
title: "Robot Arm Madness: Getting My Game On"
date: "2013-09-01"
categories:
- Software
- Firmware
- Hardware
tags:
- Manipulator
- Motion Control
- Motion Planning
- Drawing Task
- Path Planning
- Gripper System Design
- Fuzzy Algorithm
slug: manipulator-drawing-task-competition
thumbnailImage: post/manipulator-drawing-task-competition/images/cover.webp
---

<!-- for peek -->
I dive into the HIWIN Manipulator Competition, where our robot's drawing skills clinched the 
championship. It's about fine-tuning robotic precision for art, mixing tech and creativity.

<!--more-->
So here I am, rolling up to the sixth edition of the HIWIN Manipulator Competition this year. 
And let me tell you, it's not just any regular showdown; this is THE premier robot arm face-off in 
Taiwan. We've got the big dogs of every major robot lab showing up. The line-up of challenges? 
Absolute bonkers: from card-stacking antics to robots trying their hand (pun intended) at sketching, 
to a wild robot version of ping pong.

{{< image classes="clear fancybox fig-100" src="/post/manipulator-drawing-task-competition/images/cover.webp" group="x1" title="Drawing Task" >}}

Under my leadership in the drawing challenge segment, what tech marvel are we tackling? That's right, 
the drawing challenge. Tasked with bringing out its inner Picasso, our robot is set to skillfully 
inscribe the Chinese words for “Intelligent Motion”, add a flourish with a stamp, etch “WIN” onto a 
cylinder, and produce a robot-themed magnum opus. All these feats, and just seven minutes to seal 
the deal. No sweat, right?
{{< image classes="clear fancybox fig-100" src="/post/manipulator-drawing-task-competition/images/Competition_Rules_Diagram.webp" group="x1" title="Competition Rules Diagram" >}}

Navigating this jungle involves:
1. **Robot Arm Calibration:** Even bots need a little tune-up. I’ve crafted this uber-cool system 
   to recalibrate the arm each time it starts. Setting up on site? A tango of its own. But our 
   team’s got a streamlined SOP to align our robot and its canvas perfectly. And those uneven tables? 
   A doodling disaster! But my secret weapon: Fuzzy algorithm + compensating circuit. This dynamic 
   duo lets our robot dissect the table into 16 precise zones, ensuring every stroke is on point.

2. **Sketching Like A Pro:** With a palette of colors and intricate designs, planning is key. 
   Deciding when to lift, when to swap colors, and translating a paper sketch into robot groove? 
   I’ve got a nifty system for that, translating sketches to smooth robotic moves.

3. **Cylinder Shenanigans:** One of our tasks is crafting letters on a curved surface. Think 
   re-mapping coordinates and getting that robot to glide perfectly on the curve. Artistry, robot style.

4. **The Grip Saga:** A bot’s grasp makes or breaks the game. We started with pressure sensors, but 
   they were a tad moody. So, in came my revamped design, leveraging motor encoders. This new grip 
   senses and adjusts flawlessly, making our sketches top-notch.

Ready for a visual treat? Dive into this video and watch as we bring all the robotic madness I just 
dished out to life. Popcorn optional but highly recommended. 🍿🤖
{{< youtube mbK-hn7fNx4 >}}


Check out this snap of me in the thick of the action! 🤖 Given the competition's focus on automated 
robotic arms, touching the computer or intervening in any way was a big no-no unless something 
unexpected cropped up.

Stepping up as the leader for the drawing competition segment, take a look at my poised stance. 
Left hand ready on the emergency stop, making sure our bot doesn't decide to go rogue. And on top 
of that? Handling those sharp questions from the presenter on the side. Surrounded by esteemed 
judges with elite robot backgrounds, they're all eyes on our machine's graceful moves, prepping 
their scores for the next round. Talk about multitasking, right? 😎
{{< image classes="clear fancybox fig-100" src="/post/manipulator-drawing-task-competition/images/operation.webp" group="x1" title="Cool Under Pressure: Robot Whisperer in Action" >}}


Feast your eyes on the artwork produced by our robotic arm post-competition! 🎨 The elegant curves 
and the variety of colors are already a treat, but here's the fun twist: our robotic arm drew... a 
robotic arm drawing a robotic arm! A playful touch we thought would tickle the judges and the 
presenter. A bit of humor to go with the tech, right? 😂
{{< image classes="clear fancybox fig-100" src="/post/manipulator-drawing-task-competition/images/our_results.webp" group="x1" title="Recursive Robotic Renaissance: An Arm Drawing an Arm Drawing an Arm" >}}


Feast your eyes on the drawing results from all nine teams! While some teams couldn't even meet the 
basic drawing requirements, our team distinguished itself beautifully. Compared to others, we 
flawlessly employed a variety of colors to craft elegant curves, rather than just simple lines and 
angles. This technical prowess sealed our undeniable victory in the drawing competition segment, 
crowning us the champions!
{{< image classes="clear fancybox fig-100" src="/post/manipulator-drawing-task-competition/images/all_teams_results.webp" group="x1" title="Champion Strokes: A Tapestry of Tech-Driven Artistry" >}}

Behold the culmination of a year's relentless hard work, as it beautifully materializes in this 
moment. Every team was an admirable contender, yet our collective prowess in the drawing challenge 
shone through. Proudly presenting our trophy of dedication – the championship medal for the drawing 
competition, alongside the brilliant minds behind the robotic marvel!
{{< image classes="clear fancybox fig-100" src="/post/manipulator-drawing-task-competition/images/20130831_機器手頒獎典禮077.webp" group="x1" title="Triumph in Unity: Our Championship Moment" >}}

Across various challenges, our team showcased exceptional prowess, earning commendable scores that 
ultimately led us to clinch the second place overall. Together, we celebrated this momentous 
achievement, proudly standing as one united front.
{{< image classes="clear fancybox fig-100" src="/post/manipulator-drawing-task-competition/images/20130831_機器手頒獎典禮108.webp" group="x1" title="Together at Second: Our Collective Triumph" >}}

