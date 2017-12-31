# Digit-Recognition
In this project, we train our own ANN using backpropagation algorithm on MNIST 
dataset which later can help our machine to identify a given numeric digit.

# More About Dataset

Information and documentation of the dataset can be found on:
http://yann.lecun.com/exdb/mnist/

# Initializing the dataset

<li> Dataset consists the matrix, where each image is represented in the form 1x784</li>
<li> Follow the code in file imageProjection.m to project/visualize the image</li>
<li> Link to download dataset is given in the pdf file present in Theory folder</li>
<li> init() function initializes the dataset</li>
<li> We build a bigger training dataset which contains images from each class one by one i.e. 
   we make a training dataset containing images arranged as 0,1,2....9. In order to make a 
   uniform dataset, we take 5421[as the class having minimum (class 5) samples is equal to 5421]
   images from each training class as training dataset of 5421x10.</li><br>
Arrangement like this is done so as to maintain degree of randomness in our dataset thus weight distribution 
becomes uniform for all types of digits

# BackPropagation Algorithm

The backpropagation algorithm was originally introduced in the 1970s, but its importance wasn't fully appreciated until a famous 1986 paper by David Rumelhart, Geoffrey Hinton, and Ronald Williams. That paper describes several neural networks where backpropagation works far faster than earlier approaches to learning, making it possible to use neural nets to solve problems which had previously been insoluble. Today, the backpropagation algorithm is the workhorse of learning in neural networks.

This chapter is more mathematically involved than the rest of the book. If you're not crazy about mathematics you may be tempted to skip the chapter, and to treat backpropagation as a black box whose details you're willing to ignore. <a href="http://neuralnetworksanddeeplearning.com/chap2.html">Why take the time to study those details?</a>

<a href = "https://mattmazur.com/2015/03/17/a-step-by-step-backpropagation-example/">Link</a> for step-by-step backpropagation execution. The contents of the blog are also present in the theory folder. (Just in case ¯＼(º_o)/¯ )

# Stopping Criteria

[tex]Error_{total} = 1/2 (Output_{Expected} - Output_{Achieved})^2 [/tex] 
