---
title: "Deep Learning Image Classification and Recognition via Caffe"
date: "2014-10-17"
categories:
- Software
tags:
- Deep Learning
- Image Classification
- Image Recognition
- Image Processing
- Caffe framework
- Embedded System
- Convolution Neural Network
slug: deep-learning-image-classification-via-caffe
thumbnailImage: post/deep-learning-image-classification-via-caffe/images/cnn_result.webp
---

<!-- for peek -->
Lean back, take a chill pill, and let's dive into this techy deep dive, folks.

We're messing around with the Caffe library in this piece, a deep learning hotshot created by the whizzes at the Berkeley Vision and Learning Center (BVLC). You know, the Convolutional Neural Network (CNN)? That monster algorithm that's all about classifying objects in images? Yeah, that's a piece of cake for a hefty PC, but try fitting that in a pint-sized robot and you're in for a treat.

<!--more-->
That's where we turn the tables. We need a tiny computer, an embedded system, that can flex its muscles and crunch those algorithms, even in the tightest of spaces.

Jumping to the results - we've used the massive ImageNet database (the ILSVRC12 challenge, if you wanna get fancy). We're talking about a whopping 12 million images, gobbling up 138GB. For comparison, we've put Caffe to the test on a PC (rocking an Nvidia GTX960 graphics card, no less) in CPU mode and GPU mode, and compared it with running on a Parallella board in CPU mode.

Boy, the results are a sight to behold. The PC running Caffe on its graphics card is a whopping 189 times faster, and on CPU mode, it's 9.7 times quicker than the Caffe running on the Parallella board.

And get this, we even built a classification system that could tell a tree frog from a volcano. Ain't that neat? All this was made possible thanks to the magic of the Regions with Convolutional Neural Network (RCNN), which helps in not just detecting but also classifying objects.

Finally, we've managed to port the Caffe library to the Parallella board. So now, we can send the image we want to classify through the Internet, and our tiny but mighty embedded system will handle the rest. It'll run the convolution neural network, do its thing with image classification, and then ping us back with the results, all ready for the next image.

Ain't that a ride? Stay tuned for the next big thing!

<h4 class='text-left'>
    <a href='/post/deep-learning-image-classification-via-caffe/files/Publication_GuanTing_LI_CNN_Conference_20150301.pdf'>Conference PDF</a>
</h4>

{{< image classes="fancybox fig-100" src="/post/deep-learning-image-classification-via-caffe/images/cnn_result.webp" group="x1" title="Image Classification Results" >}}
{{< image classes="fancybox fig-100" src="/post/deep-learning-image-classification-via-caffe/images/system_structure.webp" group="x1" title="System Structure" >}}


# Demo
Image Classification
{{< youtube kqJFQzzzEM4 >}}

Image Recognition
{{< youtube YOD01SvJK8M >}} 

Conference Presentation
{{< youtube DeBLyY6lby4 >}} 