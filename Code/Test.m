function[result] = Test(weight1,weight2,inputMNIST,neurons)
%Function to test the testingSet

    result = 0;
    outputAtHidden = zeros(1,neurons);
    outputAtOutput = zeros(1,10);
    
    %Class 0
    imageSet = inputMNIST.test0();
    count = 0;
    for i = 1:size(imageSet);
        [outputAtHidden,outputAtOutput] = feedForward(imageSet(i,:),outputAtHidden,outputAtOutput,weight1, weight2);
        [~,index] = max(outputAtOutput);
        if index == 1
            count = count + 1;
        end
    end
    fprintf('Accuracy for class 0 is %f percent\n',count/9.8);
    result = result + count;
    %Class 1
    imageSet = inputMNIST.test1();
    count = 0;
    for i = 1:size(imageSet);
        [outputAtHidden,outputAtOutput] = feedForward(imageSet(i,:),outputAtHidden,outputAtOutput,weight1, weight2);
        [~,index] = max(outputAtOutput);
        if index == 2
            count = count + 1;
        end
    end
    fprintf('Accuracy for class 1 is %f percent\n',count/11.35);
    result = result + count;
    %Class 2
    imageSet = inputMNIST.test2();
    count = 0;  
    for i = 1:size(imageSet);
        [outputAtHidden,outputAtOutput] = feedForward(imageSet(i,:),outputAtHidden,outputAtOutput,weight1, weight2);
        [~,index] = max(outputAtOutput);
        if index == 3
            count = count + 1;
        end
    end
    fprintf('Accuracy for class 2 is %f percent\n',count/10.32);
    result = result + count;
    %Class 3
    imageSet = inputMNIST.test3();
    count = 0;
    for i = 1:size(imageSet);
        [outputAtHidden,outputAtOutput] = feedForward(imageSet(i,:),outputAtHidden,outputAtOutput,weight1, weight2);
        [~,index] = max(outputAtOutput);
        if index == 4
            count = count + 1;
        end
    end
    fprintf('Accuracy for class 3 is %f percent\n',count/10.10);
    result = result + count;
    %Class 4
    imageSet = inputMNIST.test4();
    count = 0;
    for i = 1:size(imageSet);
        [outputAtHidden,outputAtOutput] = feedForward(imageSet(i,:),outputAtHidden,outputAtOutput,weight1, weight2);
        [~,index] = max(outputAtOutput);
        if index == 5
            count = count + 1;
        end
    end
    fprintf('Accuracy for class 4 is %f percent\n',count/9.82);
    result = result + count;
    %Class 5
    imageSet = inputMNIST.test5();
    count = 0;
    for i = 1:size(imageSet);
        [outputAtHidden,outputAtOutput] = feedForward(imageSet(i,:),outputAtHidden,outputAtOutput,weight1, weight2);
        [~,index] = max(outputAtOutput);
        if index == 6
            count = count + 1;
        end
    end
    fprintf('Accuracy for class 5 is %f percent\n',count/8.92);
    result = result + count;
    %Class 6
    imageSet = inputMNIST.test6();
    count = 0;
    for i = 1:size(imageSet);
        [outputAtHidden,outputAtOutput] = feedForward(imageSet(i,:),outputAtHidden,outputAtOutput,weight1, weight2);
        [~,index] = max(outputAtOutput);
        if index == 7
            count = count + 1;
        end
    end
    fprintf('Accuracy for class 6 is %f percent\n',count/9.58);
    result = result + count;
    %Class 7
    imageSet = inputMNIST.test7();
    count = 0;
    for i = 1:size(imageSet);
        [outputAtHidden,outputAtOutput] = feedForward(imageSet(i,:),outputAtHidden,outputAtOutput,weight1, weight2);
        [~,index] = max(outputAtOutput);
        if index == 8
            count = count + 1;
        end
    end
    fprintf('Accuracy for class 7 is %f percent\n',count/10.28);
    result = result + count;
    %Class 8
    imageSet = inputMNIST.test8();
    count = 0;
    for i = 1:size(imageSet);
        [outputAtHidden,outputAtOutput] = feedForward(imageSet(i,:),outputAtHidden,outputAtOutput,weight1, weight2);
        [~,index] = max(outputAtOutput);
        if index == 9
            count = count + 1;
        end
    end
    fprintf('Accuracy for class 8 is %f percent\n',count/9.74);
    result = result + count;
    %Class 9
    imageSet = inputMNIST.test9();
    count = 0;
    for i = 1:size(imageSet);
        [outputAtHidden,outputAtOutput] = feedForward(imageSet(i,:),outputAtHidden,outputAtOutput,weight1, weight2);
        [~,index] = max(outputAtOutput);
        if index == 10
            count = count + 1;
        end
    end
    fprintf('Accuracy for class 9 is %f percent\n',count/10.09);
    result = result + count;
    
    result = result/10000;
end