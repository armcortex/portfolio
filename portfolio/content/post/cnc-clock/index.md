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
gallery: 
- /post/cnc-clock/images/gallery/1_cdrom_floopy_frame.jpg
- /post/cnc-clock/images/gallery/2_cdrom_detail.jpg
- /post/cnc-clock/images/gallery/3_cdrom_laser_linear_motor.jpg
- /post/cnc-clock/images/gallery/4_simple_experiment.jpg
- /post/cnc-clock/images/gallery/5_simple_experiment2.jpg
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

{{< image classes="fancybox fig-20" src="/post/cnc-clock/images/gallery/1_cdrom_floopy_frame.jpg" group="cnc" title="CD-ROM Frame">}}
{{< image classes="fancybox fig-20" src="/post/cnc-clock/images/gallery/2_cdrom_detail.jpg" group="cnc" title="CD-ROM Details">}}
{{< image classes="fancybox fig-20" src="/post/cnc-clock/images/gallery/3_cdrom_laser_linear_motor.jpg" group="cnc" title="CD-ROM Laser">}}
{{< image classes="fancybox fig-20" src="/post/cnc-clock/images/gallery/4_simple_experiment.jpg" group="cnc" title="Simple Experiment">}}
{{< image classes="fancybox fig-20" src="/post/cnc-clock/images/gallery/5_simple_experiment2.jpg" group="cnc" title="With Limit Experiment">}}


<!-- {{< image classes="fancybox fig-20" src="/post/cnc-clock/images/gallery/1_cdrom_floopy_frame.jpg" thumbnailWidth="50%" thumbnailHeigh="50%" group="abc" title="">}}
{{< image classes="fancybox" src="/post/cnc-clock/images/gallery/2_cdrom_detail.jpg" thumbnailWidth="50%" thumbnailHeigh="50%" group="abc" title="">}}

{{< image classes="fancybox" src="/post/cnc-clock/images/gallery/3_cdrom_laser_linear_motor.jpg" group="fancybox" title="Font View">}}
{{< image classes="fancybox" src="/post/cnc-clock/images/gallery/4_simple_experiment.jpg" group="fancybox" title="Font View">}}
{{< image classes="fancybox" src="/post/cnc-clock/images/gallery/5_simple_experiment2.jpg" group="CNC-Clock" title="Font View">}} -->

