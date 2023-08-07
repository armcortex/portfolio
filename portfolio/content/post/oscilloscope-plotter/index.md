---
title: "Oscilloscope Plotter"
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
# coverImage: /images/oscilloscope-plotter/demo.webp
# coverSize: partial
---

<!-- for peek -->

Using Oscilloscope to plot words

<!--more-->

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
