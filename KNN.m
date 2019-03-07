clear all
attributes = xlsread('glass.xlsx');
[~ , ~ , class] = xlsread( 'class.xlsx' , 1 , 'A1:A214');
resultKNN = ClassificationKNN.fit(attributes , class , 'NumNeighbors' , 5);
disp(resultKNN)
loss = resubLoss (resultKNN) %fraction of misclassification from the predictioins of resultKNN
                                                    %the classifier predict
                                                    %incorrectly for 'loss'
                                                    %percent of training
                                                    %data
crossValidation = crossval(resultKNN,'kfold', 10); %arzyabi deghat dataset ba deghat 10 
                                   %cross validation classifier ==> eterbar sangiye motagabel
                                                         
crossValidationLoss = kfoldLoss(crossValidation) % percenting data that is not used for training

%predict the classificationo of an average flower
flwr = mean(attributes); %an average 
flwrClass = predict ( resultKNN , flwr)
