# Digit-Recognition
In this project, we train our own ANN with one hidden layer using backpropagation algorithm on MNIST 
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

<a href="https://www.codecogs.com/eqnedit.php?latex=Error_{total}&space;=&space;\frac{1}{2}&space;(Output_{Expected}&space;-&space;Output_{Calculated})^2" target="_blank"><img src="https://latex.codecogs.com/gif.latex?Error_{total}&space;=&space;\frac{1}{2}&space;(Output_{Expected}&space;-&space;Output_{Calculated})^2" title="Error_{total} = \frac{1}{2} (Output_{Expected} - Output_{Calculated})^2" /></a><br>
The above is the squared error function used to calculate the error. For each iteration, we check the error obtained in the previous iteration and the current iteration and the difference is then compared with a momentum value. If this goes below a value, we stop the process.

# Results
Classwise accuracies achieved are:<br>
Accuracy for class 0 is 98.469388 percent<br>
Accuracy for class 1 is 98.149780 percent<br>
Accuracy for class 2 is 95.930233 percent<br>
Accuracy for class 3 is 95.049505 percent<br>
Accuracy for class 4 is 94.602851 percent<br>
Accuracy for class 5 is 93.609865 percent<br>
Accuracy for class 6 is 96.764092 percent<br>
Accuracy for class 7 is 94.844358 percent<br>
Accuracy for class 8 is 96.201232 percent<br>
Accuracy for class 9 is 94.449950 percent<br>

The overall accuracy obtained is **95.85%**

# Module Explanation
**DataSet/mnist_all.mat**: Matfile containing processed MNIST dataset containing 10 classes (0-9) having 60000 training images and 10000 testing images.<br>
**DataSet/DigitRecognition.mat**: Matfile containing the final weight matrices after completely training the model after the absolute error is unity. When tested using these weight matrices, we get the accuracy discussed above.<br>
**DataSet/trainSet.mat**: Refer cotent under the heading `Initializing The Dataset`.<br>
**Code/imageProjection**: Visualizing the dataset.<br>
**Code/init**: Initializing the dataset as explained under the heading `Initialing The Dataset`.<br>
**Code/backPropagation**: Declaring the weight matrix and creating the neural network. Calls the `feedForward.m` method and feeds the input using wait matrix to the hidden layer which further feeds forward to the output layer. Takes the total error at the output layer and corrects the error.In short, performs the backpropagation algorithm.<br>
**Code/feedForward**: Method that uses the formula `input*weight + bias` and later uses the sigmoidal function to normalise the value.<br>
**Code/Test**: Testing the 10000 test images over the trained weights obtained from the module `backPropagation.m`.<br>
**Code/DigitRecognition**: Main Method that triggers all the other method.<br><br>


Refer summary and statistics file for more details.<br><br>

I would like to show my deepest and humble gratitude towards my mentor, Professor Akshay Rajput who helped me in all sorts. Much thanks! ಥ‿ಥ <br>
Feel free to drop any suggestions at parthendo@geu.ac.in 
