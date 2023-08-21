---
title: "Crafting Time: My Tokyo Adventure with Salvaged Tech"
date: "2014-12-20"
categories:
- Firmware
- Hardware
tags:
- Arduino
- Electronics
- Embedded C
- Motor Control
- Stepper Motor
- Mechanism Design
slug: cnc-clock
thumbnailImage: post/cnc-clock/images/cnc_clock_front_small.webp
---

<!-- for peek -->
"Tony Stark was able to build this in a cave! With a box of scraps!" - That iconic line from Iron 
Man had me shook as a kid. Sure, creating something fancy with top-notch components is cool, but 
crafting something legit with random pieces? Now that’s where the real skill shines.

<!--more-->
{{< image classes="fancybox fig-50" src="/post/cnc-clock/images/cnc_clock_front.webp" group="cnc-0" title="Font View">}}
{{< image classes="clear fancybox fig-50" src="/post/cnc-clock/images/cnc_clock_back.webp" group="cnc-0" title="Back View">}}

During my exchange year in Tokyo at 'The University of Electro-Communications (UEC)', I stumbled 
upon this goldmine – a 3C recycling hub on campus. You name it, from computers, oscilloscopes, to 
printers, they had it. Many were ditched just for being vintage, yet they were still in prime 
working condition. That’s when it hit me: why not channel my inner Stark and craft a toy using 
these salvaged parts?

So, I scavenged heaps of CD-ROMs, Floppies, all to harness their stepper motors. My vision? A 
Computer Numerical Control (CNC) machine that scribes time – imagine a clock with a rugged, 
industrial vibe. Total game changer. During my time in Tokyo, I was armed with just a laptop, 
missing out on all the essential tools like an oscilloscope for firmware development. All I 
managed to borrow from my lab mates were a multimeter, soldering iron, and a drill. Anything I 
lacked tool-wise, I compensated with sheer grit, innovation, and some mad development skills. 
Let’s just say, my Tokyo adventure turned out to be a masterclass in making do with what you've got.


# Demo
[Github](https://github.com/armcortex/CNC_Clock)
{{< youtube iBKizaBvV7M >}}

# Materials
- CD-ROM *2
- Floopy *2
- LCD1602 *1
- Ardunio NANO*1
- ATMEGA328P *1
- SN754410 *3
- Switches from CD-ROM *5

## Disassemble 
Just get the important parts and make some fun with it.

{{< image classes="fancybox fig-33" src="/post/cnc-clock/images/gallery/1_cdrom_floopy_frame.webp" group="cnc-1" title="CD-ROM Frame">}}
{{< image classes="fancybox fig-33" src="/post/cnc-clock/images/gallery/2_cdrom_detail.webp" group="cnc-1" title="CD-ROM Details">}}
{{< image classes="clear fancybox fig-33" src="/post/cnc-clock/images/gallery/3_cdrom_laser_linear_motor.webp" group="cnc-1" title="CD-ROM Laser">}}

## Simple Experiments
Tuning stepper motor controller and test limit protections

{{< image classes="fancybox fig-50" src="/post/cnc-clock/images/gallery/4_simple_experiment.webp" group="cnc-2" title="Simple Experiment">}}
{{< image classes="clear fancybox fig-50" src="/post/cnc-clock/images/gallery/5_simple_experiment2.webp" group="cnc-2" title="With Limit Experiment">}}

## Assemble
Put hardware parts all together
{{< image classes="center fancybox fig-33" src="/post/cnc-clock/images/gallery/9_prototype.webp" group="cnc-3"  title="Full assembled">}}
{{< image classes="center fancybox fig-50" src="/post/cnc-clock/images/gallery/7_limit_switch.webp" group="cnc-3"  title="Back View">}}
{{< image classes="center fancybox fig-25" src="/post/cnc-clock/images/gallery/6_build_the_cnc_frame.webp" group="cnc-3"  title="Limit Switch">}}
{{< image classes="clear center fancybox fig-25" src="/post/cnc-clock/images/gallery/8_cnc_sits_details.webp" group="cnc-3"  title="Drawing Base">}} 

## Full Code Experiments
Control X, Y, Z axis in the same time with LCD control in separate MCU
{{< image classes="center fancybox fig-50" src="/post/cnc-clock/images/gallery/10_simple_test_full.webp" group="cnc-4"  title="Control X-Y axis First">}}
{{< image classes="center fancybox fig-50" src="/post/cnc-clock/images/gallery/11_more_drawing_test.webp" group="cnc-4"  title="X-Y Drawing Test">}}
{{< image classes="center fancybox fig-50" src="/post/cnc-clock/images/gallery/12_with_lcd_settings.webp" group="cnc-4"  title="LCD Test">}}
{{< image classes="clear center fancybox fig-50" src="/post/cnc-clock/images/gallery/13_finish_in_prototype.webp" group="cnc-4"  title="Full Function">}} 

## Soldering Time
Breadboard is not stabe, so time to do some dirty job
{{< image classes="center fancybox fig-50" src="/post/cnc-clock/images/gallery/14_soldering_plan.webp" group="cnc-5" thumbnail-width="75%" thumbnail-height="80%" title="LCD Controller Part Placement Planning">}}
{{< image classes="center fancybox fig-33" src="/post/cnc-clock/images/gallery/15_soldered_front_view.webp" group="cnc-5" title="LCD Controller Pre-assembly">}}
{{< image classes="center fancybox fig-33" src="/post/cnc-clock/images/gallery/16_soldered_back_view.webp" group="cnc-5" title="LCD Controller Soldering">}}
{{< image classes="clear center fancybox fig-33" src="/post/cnc-clock/images/gallery/17_motor_controller_solder_plan.webp" group="cnc-5" title="Motor Controller Part Placement Planning">}}
{{< image classes="center fancybox fig-50" src="/post/cnc-clock/images/gallery/18_main_controller_finish_solder_front_view.webp"group="cnc-5" title="Motor Controller Board Front View">}}
{{< image classes="clear center fancybox fig-50" src="/post/cnc-clock/images/gallery/19_main_controller_back_view.webp" group="cnc-5" title="Motor Controller Board Back View">}}

## Some System Details
{{< image classes="center fancybox fig-50" src="/post/cnc-clock/images/gallery/20_schematic.webp" group="cnc-6" title="Motor Controller Schematic">}}
{{< image classes="center fancybox fig-33" src="/post/cnc-clock/images/gallery/21_main_structure.webp" group="cnc-6" title="Motor Controller System Structure">}}
{{< image classes="clear center fancybox fig-33" src="/post/cnc-clock/images/gallery/22_sub_system_structure.webp" group="cnc-6" thumbnail-width="85%" thumbnail-height="85%" title="LCD Controller System Structure">}}


## Firmware

The definition of excitation modes for stepper motors: 1-phase excitation, 2-phase excitation, and 1-2 phase excitation, 
can be conveniently controlled by defining them as a const array.
<script src="https://gist.github.com/armcortex/3c700212d99f27954400.js?file=StepMotorDefine.hpp"></script>

Some MCU port define and timer setup. 
The function GoHome() initializes the 3 axes to return to their origin point whenever the machine is started. Lines 7 and 8 initialize the timer interrupt, 
and line 9 informs the LCD control board that it can start transmitting data when the machine is turned on.
<script src="https://gist.github.com/armcortex/3c700212d99f27954400.js?file=Setup.cpp"></script>

Every step must be completed before executing the next command, otherwise the machine may move on to the next stroke before completing the previous one.
<script src="https://gist.github.com/armcortex/3c700212d99f27954400.js?file=CheckOK.cpp"></script>

This code directly controls the motor to move to its end and stops when it reaches the limit switch. Only the X-axis has <<2 because the X-axis motor 
is connected starting from pin 2 and requires an initial shift for control. PORTD directly outputs to the motor command.
<script src="https://gist.github.com/armcortex/3c700212d99f27954400.js?file=runMotorX.cpp"></script>

This code controls the motor to move a certain distance, and when the distance is reached, CNC.xOk=true is set to execute the next drawing command.
<script src="https://gist.github.com/armcortex/3c700212d99f27954400.js?file=runMotorXd.cpp"></script>

This code limits the movement of the motor using limit switches. PIND is used to read the status of the pins, and line 5 extracts the specific pin 
status using a mask. For the Z-axis, as it has only one limit switch, the distance of movement is limited using a counter on the other end.
<script src="https://gist.github.com/armcortex/3c700212d99f27954400.js?file=range.cpp"></script>

Single-phase excitation for a stepper motor.
<script src="https://gist.github.com/armcortex/3c700212d99f27954400.js?file=onephase.cpp"></script>

And just like that, amidst the neon lights and bustling streets of Tokyo, I discovered that real 
innovation doesn't always require the newest tech; sometimes, it's all about the art of the 
hustle, the spirit of resourcefulness, and a dash of Stark-inspired audacity. Keep it crafty, folks.

