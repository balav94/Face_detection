clear all;
close all;
clc;
cur_folder = pwd;
faces = fullfile(cur_folder, 'faces');
train = fullfile(faces, 'train');
imdTrain = imageDatastore(train, ...
    'IncludeSubfolders',true,'LabelSource','foldernames');
test = fullfile(faces, 'test');
imdTest = imageDatastore(test, ...
    'IncludeSubfolders',true,'LabelSource','foldernames');
layers = [
    imageInputLayer([60 64 1])
    convolution2dLayer(3,8,'Padding','same')
    batchNormalizationLayer
    reluLayer
    maxPooling2dLayer(2,'Stride',2)
    convolution2dLayer(3,16,'Padding','same')
    batchNormalizationLayer
    reluLayer
    maxPooling2dLayer(2,'Stride',2)
    convolution2dLayer(3,32,'Padding','same')
    batchNormalizationLayer
    reluLayer
    fullyConnectedLayer(20)
    softmaxLayer
    classificationLayer];
%% testing
options = trainingOptions('sgdm', ...
    'InitialLearnRate',0.01, ...
    'MaxEpochs',10, ...
    'Shuffle','every-epoch', ...
    'ValidationData',imdTest, ...
    'ValidationFrequency',30, ...
    'Verbose',false, ...
    'Plots','training-progress');
net = trainNetwork(imdTrain,layers,options);
YPred = classify(net,imdTest);
YValidation = imdTest.Labels;
accuracy = sum(YPred == YValidation)/numel(YValidation)