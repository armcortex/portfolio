---
title: "Groovin' Bots: From Childhood Dreams to Dancing Machines"
date: "2011-04-17"
categories:
- Firmware
tags:
- Electronics
- Embedded C
- 8051
- Servo Motor
slug: dance-robot
thumbnailImage: post/dance-robot/images/dance_robot.webp
---

<!-- for peek -->
As a kiddo, I always daydreamed of crafting robots. You know, the kind with flashy lights and 
groovy moves. College came along, introducing me to the cool world of logic design, electronic 
circuits, and some neat coding stuff. With this newfound wisdom, my dream robot? A funky little 
dancer, obviously!

<!--more-->
{{< image classes="clear fancybox fig-100" src="/post/dance-robot/images/dance_robot.webp" group="x1" title="Results" >}}

When my textbooks went mute on some topics, trusty Google stepped in. With some web wisdom and 
classroom know-how, I envisioned a robot with a tank-like base and dancing arms, getting ready to 
break some moves.

# Setting The Stage with The Base
Getting the base moving was the easy part. A DC motor for each of the tank treads, and we were 
rolling! Now, to safely drive these motors and protect my precious 8051 MCU, I picked the L293D, 
a nifty Quadruple Half-H Driver. This dude forms an H-bridge to control the direction of the motors. 
Its 600mA output is plenty powerful for our groovy moves. Plus, to shield my MCU from any nasty 
Back-EMF from the motors, I've got the PC817 Photocoupler on guard duty.

# Getting Those Arms Waving
With the base ready, it was time to make the upper half do some shimmy-shakes. This meant generating 
PWM signals with my MCU to get servo motors in the arms turning just right. Each arm has three 
servos to hit those dance moves perfectly. Now, let's chat about the servo magic: for a full cycle 
of 20ms, an on-time of 1.5ms gets you a smooth 90-degree turn. Want a 0-degree pose? That's an 
on-time of 1ms. A full-on dab at 180 degrees? Crank it up to 2ms. Oh, and you read it right, 
these servos have a swanky 0 to 180-degree range.

After stitching together all this code magic, it was time for some choreography. And voila! 
The bot was ready to dance like nobody's watching! Exciting, right? 😉


# Demo
{{< youtube n-833YHaeIg >}}

