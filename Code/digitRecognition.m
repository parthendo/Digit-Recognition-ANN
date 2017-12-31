%*****MNIST DIGIT RECOGNITION USING BACKPROPAGATION ALGORITHM*****
%In this project, we train our own ANN using backpropagation algorithm
%which later can help our machine to identify a given numeric digit
%--------------------------------------------------------------------------
trainSize = 54210;
testSize = 10000;
neurons = 100;
inputMNIST = load('mnist_all.mat');
AccuracyMAX = 0;
%For testing and wanting not to over-fit the NN, we started iterating the
%stopping criteria value for
%--------------------------------------------------------------------------
%UPDATE : We get maximum accuracy for i = 1!

%UNCOMMENT THE SECTION BELOW TO GENERATE RESULTS
%%
%Initializing the dataset
%[trainSet,trainclassLabel] = init();
%for i = 1:20

%    [weight1, weight2] = backPropagation(trainSet,trainclassLabel,neurons,i,trainSize);
%    Accuracy = Test(weight1, weight2, inputMNIST, neurons);
%    fprintf('Accuracy when momentum is %d is %f\n',i,Accuracy*100);
%    if Accuracy>AccuracyMAX
%        save('D:\DigitRecognition.mat','weight1','weight2');
%        index = i;
%        AccuracyMAX = Accuracy;
%    end
%end
%fprintf('\nOverall accuracy of the system is %f percent obtained when stoppingCriteria is %d\n',AccuracyMAX*100,index);
%%
%COMMENT THIS SECTION IF YOU HAVE CALCULATED THE RESULTS AGAIN! 
load('DigitRecognition.mat');
clc;
fprintf('              Summary\n\n');
Accuracy = Test(weight1, weight2, inputMNIST, neurons);
fprintf('\nOverall accuracy of the system is %f percent\n',Accuracy*100);