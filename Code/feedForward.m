function[outputAtHidden,outputAtOutput] = feedForward(image,outputAtHidden,outputAtOutput,weight1, weight2)

    %Typecasting the image and weights
    image = double(image);
    weight1 = double(weight1);
    weight2 = double(weight2);
    %--------------------------------------
    %Feeding Forward from input layer to hidden layer
    var = weight1*image';
    for itr = 1:100
        outputAtHidden(1,itr) = 1/(1+exp(-var(itr)));
    end
    %---------------------------------------
    %Feeding Forward from hidden layer to output layer
    for itr = 1:10
        var = weight2(itr,:) * outputAtHidden';
        outputAtOutput(1,itr) = 1/(1+exp(-var)); 
    end
end