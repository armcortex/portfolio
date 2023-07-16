---
title: "CNC Clock"
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
thumbnailImage: post/cnc-clock/images/cnc_clock_front_small.jpeg
---

<!-- for peek -->
Build a CNC clock from 3C recycling center

<!--more-->
# Demo
[Github](https://github.com/armcortex/CNC_Clock)
{{< image classes="fancybox fig-50" src="/post/cnc-clock/images/cnc_clock_front.jpg" group="cnc-0" title="Font View">}}
{{< image classes="clear fancybox fig-50" src="/post/cnc-clock/images/cnc_clock_back.jpg" group="cnc-0" title="Back View">}}

{{< youtube iBKizaBvV7M >}}


# Materials
- CD-ROM *2
- Floopy *2
- LCD1602 *1
- Ardunio NANO*1
- ATMEGA328P *1
- SN754410 *3
- Switches from CD-ROM *5

## Preface
Because during this time, I'm got an exchange opportunity to Japan for one year, so I got no electronic equipment nearby
expecially **NO Oscilloscope !!!** to check waveform, I can only borrow one multimeter and soldering iron that's it, 
so it take lots of time to do experiments and make simple things done.

## Disassemble 
Just get the important parts and make some fun with it.

{{< image classes="fancybox fig-33" src="/post/cnc-clock/images/gallery/1_cdrom_floopy_frame.jpg" group="cnc-1" title="CD-ROM Frame">}}
{{< image classes="fancybox fig-33" src="/post/cnc-clock/images/gallery/2_cdrom_detail.jpg" group="cnc-1" title="CD-ROM Details">}}
{{< image classes="clear fancybox fig-33" src="/post/cnc-clock/images/gallery/3_cdrom_laser_linear_motor.jpg" group="cnc-1" title="CD-ROM Laser">}}

## Simple Experiments
Tuning stepper motor controller and test limit protections

{{< image classes="fancybox fig-50" src="/post/cnc-clock/images/gallery/4_simple_experiment.jpg" group="cnc-2" title="Simple Experiment">}}
{{< image classes="clear fancybox fig-50" src="/post/cnc-clock/images/gallery/5_simple_experiment2.jpg" group="cnc-2" title="With Limit Experiment">}}

## Assemble
Put hardware parts all together
{{< image classes="center fancybox fig-33" src="/post/cnc-clock/images/gallery/9_prototype.jpg" group="cnc-3"  title="Full assembled">}}
{{< image classes="center fancybox fig-50" src="/post/cnc-clock/images/gallery/7_limit_switch.jpg" group="cnc-3"  title="Back View">}}
{{< image classes="center fancybox fig-25" src="/post/cnc-clock/images/gallery/6_build_the_cnc_frame.jpg" group="cnc-3"  title="Limit Switch">}}
{{< image classes="clear center fancybox fig-25" src="/post/cnc-clock/images/gallery/8_cnc_sits_details.jpg" group="cnc-3"  title="Drawing Base">}} 

## Full Code Experiments
Control X, Y, Z axis in the same time with LCD control in separate MCU
{{< image classes="center fancybox fig-50" src="/post/cnc-clock/images/gallery/10_simple_test_full.jpg" group="cnc-4"  title="Control X-Y axis First">}}
{{< image classes="center fancybox fig-50" src="/post/cnc-clock/images/gallery/11_more_drawing_test.jpg" group="cnc-4"  title="X-Y Drawing Test">}}
{{< image classes="center fancybox fig-50" src="/post/cnc-clock/images/gallery/12_with_lcd_settings.jpg" group="cnc-4"  title="LCD Test">}}
{{< image classes="clear center fancybox fig-50" src="/post/cnc-clock/images/gallery/13_finish_in_prototype.jpg" group="cnc-4"  title="Full Function">}} 

## Soldering Time
Breadboard is not stabe, so time to do some dirty job
{{< image classes="center fancybox fig-50" src="/post/cnc-clock/images/gallery/14_soldering_plan.jpg" group="cnc-5" thumbnail-width="75%" thumbnail-height="80%" title="LCD Controller Part Placement Planning">}}
{{< image classes="center fancybox fig-33" src="/post/cnc-clock/images/gallery/15_soldered_front_view.jpg" group="cnc-5" title="LCD Controller Pre-assembly">}}
{{< image classes="center fancybox fig-33" src="/post/cnc-clock/images/gallery/16_soldered_back_view.jpg" group="cnc-5" title="LCD Controller Soldering">}}
{{< image classes="clear center fancybox fig-33" src="/post/cnc-clock/images/gallery/17_motor_controller_solder_plan.jpg" group="cnc-5" title="Motor Controller Part Placement Planning">}}
{{< image classes="center fancybox fig-50" src="/post/cnc-clock/images/gallery/18_main_controller_finish_solder_front_view.jpg"group="cnc-5" title="Motor Controller Board Front View">}}
{{< image classes="clear center fancybox fig-50" src="/post/cnc-clock/images/gallery/19_main_controller_back_view.jpg" group="cnc-5" title="Motor Controller Board Back View">}}

## Some System Details
{{< image classes="center fancybox fig-50" src="/post/cnc-clock/images/gallery/20_schematic.png" group="cnc-6" title="Motor Controller Schematic">}}
{{< image classes="center fancybox fig-33" src="/post/cnc-clock/images/gallery/21_main_structure.jpg" group="cnc-6" title="Motor Controller System Structure">}}
{{< image classes="clear center fancybox fig-33" src="/post/cnc-clock/images/gallery/22_sub_system_structure.jpg" group="cnc-6" thumbnail-width="85%" thumbnail-height="85%" title="LCD Controller System Structure">}}


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

So that's it. This is how to build a CNC Clock. \m/

