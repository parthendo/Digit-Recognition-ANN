function [weight1, weight2]=backPropagation(trainSet,trainclassLabel,neurons,momentum,trainSize)
    %Initializing weight matrix with random values and dividing them by 10
    %so the most of the values fall between [-1,1]
    weight1 = randn(neurons,784)/10; 
    weight2 = randn(10,neurons)/10; 
    outputAtHidden = zeros(1,neurons);
    outputAtOutput = zeros(1,10);
    covergence = 0;
    dconvergence = 0;
    Nweight = 0;
    Ndweight = 0;
    variable = 1;
    itre = 1;
    %----------------------------------------------------------------------
    while(1)
      %Building the class label
      label = [0,0,0,0,0,0,0,0,0,0];
      temp = trainclassLabel(itre) + 1;
      label(temp) = 1;
      %---------------------------------
      %Variable Learning Rate
      alpha  = double(1/sqrt(variable));
      %---------------------------------
      %Feed Forward
      [outputAtHidden,outputAtOutput] = feedForward(trainSet(itre,:),outputAtHidden,outputAtOutput,weight1, weight2);
      %---------------------------------
      %Memorizing previous weights to calculate the change in error later
      %playing as a stopping criteria
      Nweight = Ndweight;
      %Squared Error Function
      Ndweight = (1/2)*(label-outputAtOutput)*(label-outputAtOutput)';
      %Calculating Error at output layer
      errorAtOutput = (-1)*((label-outputAtOutput).*outputAtOutput.*(ones(1,10)-outputAtOutput));
      %Updating weights between hidden layer and output layer
      weight2 = weight2 - alpha*(errorAtOutput'*outputAtHidden);
      %Calculating Error at hidden layer
      errorAtHidden = (errorAtOutput*weight2).*(outputAtHidden.*(ones(1,100)-outputAtHidden));
      %Updating weights between input layer and hidden layer
      weight1 = weight1 - alpha*(errorAtHidden' * trainSet(itre,:));
      %Calculating covergence of error
      covergence = covergence + abs(Ndweight-Nweight);
      %After one complete iteration, we check whether the total error is 
      %converged upto a certain limit to break out of the loop
      if itre == trainSize
          fprintf('')
          fprintf(sprintf('Status Update 1, %i iterations done on stoppingCriteria %d\n',variable/(54210),momentum));
          fprintf(sprintf('Status Update 2, convergance difference : %f\n',abs(covergence-dconvergence)));
          if abs(covergence-dconvergence) < momentum
            	break;
            end
            dconvergence = covergence;
            covergence = 0;
      end
   
      itre = mod(itre,54210)+1;
      variable = variable+1;
    end
end