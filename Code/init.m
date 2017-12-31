function[trainSet,trainclassLabel] = init()
clc;
clear;
trainSet = zeros(54210,784);
position = 1;
inputMNIST = load('mnist_all.mat');
for i = 1:5421
    trainSet(position  ,:) = inputMNIST.train0(i,:);
	trainclassLabel(position) = 0;
	trainSet(position+1,:) = inputMNIST.train1(i,:);
	trainclassLabel(position+1) = 1;
	trainSet(position+2,:) = inputMNIST.train2(i,:);
	trainclassLabel(position+2) = 2;
	trainSet(position+3,:) = inputMNIST.train3(i,:);
	trainclassLabel(position+3) = 3;
	trainSet(position+4,:) = inputMNIST.train4(i,:);
	trainclassLabel(position+4) = 4;
	trainSet(position+5,:) = inputMNIST.train5(i,:);
	trainclassLabel(position+5) = 5;
	trainSet(position+6,:) = inputMNIST.train6(i,:);
	trainclassLabel(position+6) = 6;
	trainSet(position+7,:) = inputMNIST.train7(i,:);
	trainclassLabel(position+7) = 7;
	trainSet(position+8,:) = inputMNIST.train8(i,:);
	trainclassLabel(position+8) = 8;
	trainSet(position+9,:) = inputMNIST.train9(i,:);
	trainclassLabel(position+9) = 9;
	position=position+10;
end
%Typecasting trainSet from uint8 to double 
trainSet = double(trainSet)/255.0;
%Save the data and comment the above code to reduce the task of computing
%it again and save your valuable time
save('D:\trainSet.mat','trainSet','trainclassLabel');