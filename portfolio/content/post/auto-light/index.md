---
title: "When Ingenuity Meets Energy Saving"
date: "2020-06-16"
categories:
- Firmware
- Hardware
tags:
- Arduino
- Electronics
- Embedded C
- Fusion 360
- Mechanism Design
- 3D Printer
slug: auto-light
thumbnailImage: post/auto-light/images/auto_light2.webp
gallery:
- /post/auto-light/images/auto_light1.webp "Main Control Board"
- /post/auto-light/images/auto_light5.webp "Sonar Sensor"
- /post/auto-light/images/auto_light3.webp "Actuator and Main Cotrol Board"
- /post/auto-light/images/auto_light6.webp "Actuator and It's Supporter"
- /post/auto-light/images/auto_light2.webp "Actuator Details"
- /post/auto-light/images/auto_light_cad.webp "Fusion360 CAD View""
---

<!-- for peek -->
Every single time at the office, whether it's dashing off to a project meeting, making a quick 
pitstop at the pantry, or even just a bathroom break, I find myself in this little dance with my 
desk lamp. Off to save electricity, and on again when I'm back – all in the spirit of doing a solid 
for those polar bears. As an engineer, isn't our superhero skill making life's mundane bits more 
efficient? We ought to focus our energies on real problems.

<!--more-->
{{< image classes="fancybox fig-50" src="/post/auto-light/images/auto_light2.webp" group="x1" title="Demo">}}
{{< image classes="clear fancybox fig-50" src="/post/auto-light/images/auto_light_cad.webp" group="x1" title="Fusion360 CAD View">}}

Now, as much as I'd love to, I can't just mess with the office wiring and install something like a 
Relay or Solid State Relay (SSR) to act as a switch. Let's be real; I kinda still need that 
paycheck. But that won't stop me from getting crafty. Back home, I whipped out Fusion 360 and 
designed a simple servo motor bracket that'll sit right above my switch. Paired with an ultrasonic 
sensor, it'll detect when I'm back at my desk, and bingo – let there be light!

And since there's often a quick chat with colleagues about project details, I didn't want the servo 
causing a racket every time I'm in and out. So, I've set a simple delay: the lamp stays on for a 
bit and only turns off if I'm MIA for a while. Given the simplicity of this gadget, an Arduino Nano 
board is perfect. A few connections on a breadboard, and I've got myself an automated desk light. 
Problem-solving at its finest, right? Oh, the sweet joys of engineering! Yeahhhh! 🎉


# Demo
[Github](https://github.com/armcortex/auto_light)



