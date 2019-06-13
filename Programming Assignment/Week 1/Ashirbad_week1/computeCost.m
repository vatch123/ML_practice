function J = computeCost(X, y, theta)
theta=[theta(1) theta(2)]; % ensure theta is 1x2
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
% 
              %You should set J to the cost.
JM=(X * theta')-y;
JM=JM .* JM;
one=ones(1,m);
J=one*JM;
J=J/(m*2);


% =========================================================================

end
