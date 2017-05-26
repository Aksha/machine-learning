%% SVM algorithms 
%% we will use gaussianKernel
%% to give the decision boundary

clear; close all; clc

data = csvread('test_data.csv');

X = [data(:,5),data(:,6)]; % X is CD4 and VL combination
y = data (:, 2); % y is the prediction res

% plot data
plotdata(X, y);

xlabel('VL number');
ylabel('CD4 number');
legend('improved','non-improved');
hold off;

%============training with gaussiankernel==============

C = 0.5; sigma = 0.1;
model = svmTrain(X,y,C, @(x1,x2) gaussianKernel(x1,x2,sigma));%visualizeBoundary(X,y,model);
pred = svmPredict(model,X);
fprintf('Training accuracy: %f\n', mean(double(pred==y)) * 100);
