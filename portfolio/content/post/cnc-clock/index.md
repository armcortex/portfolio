---
title: "CNC Clock"
date: "2014-12-20"
categories:
- Firmware
tags:
- Arduino
- Electronics
- Embedded C
- Motor Control
slug: cnc-clock
thumbnailImage: post/cnc-clock/images/cnc_clock_front_small.jpeg
# gallery: 
# - /post/cnc-clock/images/gallery/1_cdrom_floopy_frame.jpg
# - /post/cnc-clock/images/gallery/2_cdrom_detail.jpg
# - /post/cnc-clock/images/gallery/3_cdrom_laser_linear_motor.jpg
# - /post/cnc-clock/images/gallery/4_simple_experiment.jpg
# - /post/cnc-clock/images/gallery/5_simple_experiment2.jpg
---

<!-- for peek -->
Build a CNC clock from 3C recycling center

<!--more-->
# Demo
[Github](https://github.com/armcortex/CNC_Clock)
{{< image classes="fancybox fig-50" src="/post/cnc-clock/images/cnc_clock_front.jpg" title="Font View">}}
{{< image classes="clear fancybox fig-50" src="/post/cnc-clock/images/cnc_clock_back.jpg" title="Back View">}}

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

## Experiments
Tuning stepper motor controller and test limit protections

{{< image classes="fancybox fig-50" src="/post/cnc-clock/images/gallery/4_simple_experiment.jpg" group="cnc-2" title="Simple Experiment">}}
{{< image classes="clear fancybox fig-50" src="/post/cnc-clock/images/gallery/5_simple_experiment2.jpg" group="cnc-2" title="With Limit Experiment">}}

## Assemble
Put hardware parts all together
{{< image classes="center fancybox fig-33" src="/post/cnc-clock/images/gallery/9_prototype.jpg" group="cnc-3"  title="Full assembled">}}
{{< image classes="center fancybox fig-50" src="/post/cnc-clock/images/gallery/7_limit_switch.jpg" group="cnc-3"  title="Back View">}}
{{< image classes="center fancybox fig-25" src="/post/cnc-clock/images/gallery/6_build_the_cnc_frame.jpg" group="cnc-3"  title="Limit Switch">}}
{{< image classes="clear center fancybox fig-25" src="/post/cnc-clock/images/gallery/8_cnc_sits_details.jpg" group="cnc-3"  title="Some Detail">}} 

