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
   images from each training class as training dataset of 5421x10.</li><br><br>   
Arrangement like this is done so as to maintain degree of randomness in our dataset thus weight distribution 
becomes uniform for all types of digits
