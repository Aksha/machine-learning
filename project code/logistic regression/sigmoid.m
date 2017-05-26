% This is a sigma Function
% it will calculate G(x)

function G = sigmoid(Z)

% initialize G
%G = zeros(size(Z));

G = 1 ./(1+exp(-Z));

end