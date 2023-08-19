---
title: "When Engineer Vibes Meet Birthday Wishes"
date: "2021-06-19"
categories:
- Firmware
- Hardware
tags:
- Embedded C
- Arduino
- Electronics
slug: oscilloscope-plotter
thumbnailImage: post/oscilloscope-plotter/images/plotter_demo.webp
---

<!-- for peek -->
So, the other day, my buddy A from our uni crew popped up with a request: it was his girlfriend's 
birthday, and he hoped we could film short videos to celebrate. I mean, we're talking about a bond 
that spans decades here; of course, we'd come through. But here's the catch: simply mouthing a 
"Happy Birthday" on video? Way too mainstream for my mischief-loving self.

<!--more-->
{{< image classes="fancybox fig-100" src="/post/oscilloscope-plotter/images/plotter_demo.webp" group="x1" title="Results" >}}

Being a software/firmware engineer, it's kinda standard to have a digital oscilloscope lying around. 
Lightbulb moment: why not pen a neat little C program on an MCU to generate a signal, which when 
fed to the oscilloscope, spells out a message? Displaying "Happy Birthday" on the oscilloscope 
screen – sounds rad, right?

With the idea nailed, the rest was a cakewalk. I started with two DACs capable of producing signals, 
corresponding to the X-Y mode of the oscilloscope. I mapped out a char array for A-Z, and, for a 
personal touch, my all-time favorite emoticon ">///<". Toss in a couple of handy functions like 
resize() and reposition(), loop through each char to produce the signal, and voila! Birthday 
message, engineer style. Hell Yeah >///< 🎉


# Demo
[Github](https://github.com/armcortex/Arduino_Scope_XY_Text)
{{< youtube DNeIA9IsSRQ >}}

# How to use it
Change sentence you want on TEXT1, TEXT2
```c
#define WORD_CNT    (10)
#define TEXT1       ("YEAH>///<")
#define TEXT2       ("HELL")
``` 


# Schematic
![schematic](/post/oscilloscope-plotter/images/schematic.webp)
