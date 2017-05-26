%% logistic repression 

clear; close all; clc

data = csvread('test_data.csv');

X = [data(:,5),data(:,6)]; % X is CD4 and VL combination
y = data (:, 2); % y is the prediction res

% plot data
plotdata(X, y);

hold on;
xlabel('VL number');
ylabel('CD4 number');
legend('improved','non-improved');
hold off;

fprintf('\nProgram paused. Press enter to continue.\n');
pause;

%  Set up your data matrix to have the column of ones for the Intercept term
X = [ones(length(X),1), X];

% Create an initial theta of all zeros
initial_theta = zeros(3, 1);

% Compute and display initial cost and gradient
[cost, grad] = costFunction(initial_theta, X, y);

fprintf('Cost at initial theta: %f\n', cost);
fprintf('Gradient at initial theta: \n');
fprintf(' %f \n', grad);

fprintf('\nProgram paused. Press enter to continue.\n');
pause;

%  Set options for fminunc
options = optimset('GradObj', 'on', 'MaxIter', 400);

%  Use fminunc to compute theta and cost. 
[theta, cost] = ...
fminunc(@(t)(costFunction(t, X, y)), initial_theta, options);

% Print theta 
fprintf('Cost at optimized theta: %f\n', cost);
fprintf('theta: \n');
fprintf(' %f \n', theta);

fprintf('\nProgram paused. Press enter to continue.\n');
pause;

%prob = sigmoid( theta' * [1;5.4;115]);
%fprintf(['For a patient with VL number 5.4 and CD-4 number 115, we predict an pass ' ...
%            'probability of %f\n\n'], prob);
p = prediction(X,theta);
fprintf('Training Accuracy: %f\n', mean(double(p == y)) * 100);

fprintf('\nProgram paused. Press enter to continue.\n');
pause;
