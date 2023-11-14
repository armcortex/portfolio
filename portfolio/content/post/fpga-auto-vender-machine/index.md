---
title: DIY Auto Vender Machine with Altera DE0 FPGA? Heck Yeah!
date: "2012-12-18"
categories:
- Firmware
- Hardware
tags:
- FPGA
- SoPC
- Altera
- NIOS II
slug: fpga-auto-vender-machine
thumbnailImage: post/fpga-auto-vender-machine/images/auto_vender_machine.webp
---

<!-- for peek -->
I crafted an automated vending machine using an Altera DE0 FPGA board, complete with SoPC and 
Nios II CPU magic. It's like a mini convenience store with simple controls and a retro vibe, 
dispensing drinks with a touch of tech brilliance

<!--more-->
What's up folks? So, I embarked on this uber-cool project where I designed an Auto Vender Machine on the Altera DE0 FPGA board. Sounds fancy, right? And guess what? I threw in some extra tech magic using SoPC and the Nios II soft-core CPU for some added oomph! Quick design concepts with firmware and HDL? You bet that's a big part of my PoC.

{{< image classes="fancybox fig-100" src="/post/fpga-auto-vender-machine/images/auto_vender_machine.webp" group="x1" title="Results" >}}

Now, let's talk about the main star of the show – the vending machine system. It’s like a mini convenience store on an LCD! We've got four delish items up for grabs:

- Juice at 10 bucks
- Cola for 15
- Some tea at 20
- And milk for a cool 25.

And, for some old-school vibes, the current item you've got your eyes set on is highlighted with a cursor. To keep track of your investment (because every sip is an investment in refreshment 😉), there's a 7-segment display showing the cash you've fed into this munchies monster.

And the controls? Pure simplicity. Three push buttons handle all your choices. From right to left, we've got: choosing your drink, popping in your coins, and the all-important coin return (just in case you change your mind).

Speaking of coins, there's this nifty switch in the bottom left. It’s your mini-bank where you select which coin you're dropping in. Choices range from 1, 5, 10 to 50 units.

Now, once you’ve made your beverage decision and paid up, the LCD sends you a "Thanks for buying [your chosen drink]" message. And for those who are always on top of their finances, the 7-segment display shows you the balance left after quenching your thirst.

So, in a nutshell, I turned a board into your go-to drink dispenser. How rad is that? 🍹

Hope this gives off the right vibes! Cheers to tech and refreshments! 🥂

# Demo
[Github](https://github.com/armcortex/practice-archive/tree/main/20121218_auto_vender_machine/software/AutoSeller)
{{< youtube l_LxecHCjfI >}}

