---
title: "The Ultimate Translator: ChatGPT Meets Chrome Extensions!"
date: "2023-04-23"
categories:
- Software
tags:
- JavaScript
- HTML
- CSS
- Bash Script
- Docker
- Chrome Extension
- ChatGPT
- Prompt Engineering
slug: prompt-translate-chrome-extension
thumbnailImage: post/prompt-translate-chrome-extension/images/demo4.webp
gallery:
- /post/prompt-translate-chrome-extension/images/demo2.webp "English translate to Japanese"
- /post/prompt-translate-chrome-extension/images/demo1.webp "English translate to Tradition Chinese"
- /post/prompt-translate-chrome-extension/images/demo3.webp "English translate to Tradition Chinese"
- /post/prompt-translate-chrome-extension/images/demo4.webp "Japanese translate to Tradition Chinese"

---

<!-- for peek -->
So, I stumbled upon this wicked GitHub repo a buddy shared online, breaking down the deets on using 
Nvidia's Isaac sim. The link? Right [here](https://github.com/SOutaHI/isaac_sim_examples/blob/main/tutorials/install/1_install.md). It looked juicy with all those visuals and explanations. 
Honestly, I was all aboard the hype train for Nvidia's Issac sim tool. But here's the snag: my 
Japanese skills are... well, let's just say they're non-existent. Couldn't make heads or tails of it!

<!--more-->
{{< image classes="clear fancybox fig-100" src="/post/prompt-translate-chrome-extension/images/demo4.webp" group="x1" title="Results" >}}

Now, remember that time I dabbled with ChatGPT and conjured up those bedtime story shorts? Why not 
take a detour this time and lean on our trusty ChatGPT to craft a Chrome extension? Oh, and did I 
mention, I thought, "Why not make it the ultimate language translator?"

Every time you highlight some text, BOOM! A little pop-up gives you the translation in your desired 
lingo. Be it Japanese, German, French - the world is your linguistic oyster. And hey, if you're on 
the flip side and fancy learning a new language, this tool's got your back.

To bring this brainchild to life, I cooked up a neat bash script that springs a Node.js container 
to life using Docker. Play around, experiment, and no worries about bungling up your machine. Plus, 
it's a breeze to share with others! Found this nifty tool online, the 'chrome-extension-cli’, 
which wraps up my project into a snazzy Chrome extension. All that was left? A sprinkle of 
JavaScript, a dash of UI design, and a hookup to OpenAI’s gpt-3.5-turbo-0301 model API. And voilà, 
my very own global translator was born!



# Demo
[Github](https://github.com/armcortex/prompt-translate-chrome-extension)


