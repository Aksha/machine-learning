% This function is to calculate costFunction

function [J, gradient] = costFunction(theta, X, y)

% number of training examples
m = length(y);

% initialize J and gradient
J = 0;
gradient = 0;

% set J to the cost
J = 1./ m * (-y' * log(sigmoid(X * theta)) - (1- y') * log ( 1- sigmoid (X * theta)));

% set gradient to the gradient variable

gradient = 1 ./ m * X' * (sigmoid(X * theta) - y);

% X: m * (n+1)
% Theta: (n+1)

end