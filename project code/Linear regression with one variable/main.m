% This file used linear regression with multiple variables
% the features here will be CD4, VL and res
% we will predict res based on CD4 and VL number


% CD4 is 6th column
% VL is 5th column

clear; close all;clc
fprintf('Loading data...\n');

%% load data
data = csvread('test_data.csv');
X = data(:, 5:6); % X is CD4 and VL combination
y = data (:, 2); % y is the prediction res

m = length(y)

% print out some points to test data
fprintf('First 30 example from the dataset: \n');
fprintf('x = [%f %f], y = %d\n', [X(1:30,:) y(1:30,:)]');

fprintf("system pause, press enter to continue.\n");
pause;

% since CD4 number is greater than vl number
% we decide to do with feature normalize

fprintf('Normalizing features...\n');

[X mu sigma] = featureNormalize(X);

% add intercept term to X
X = [ones(m,1) X];

% calculating gradient descent

fprintf('Running gradient descent ...\n');

% try different alpha number
%alpha = 0.3
alpha = 0.5;
% does number of iterations matter?
% we will test with different levels of iteration
num_iters = 200;

theta = zeros(3, 1);
[theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters);


% Display gradient descent's result
fprintf('Theta computed from gradient descent: \n');
fprintf(' %f \n', theta);
fprintf('\n');


p = predictionFunction(X, theta);
fprintf('Training Accuracy: %f\n', mean(double(p == y)) * 100);

fprintf('\nProgram paused. Press enter to continue.\n');
pause;