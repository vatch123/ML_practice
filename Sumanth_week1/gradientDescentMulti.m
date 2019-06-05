function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %
J_history(iter)=computeCostMulti(X,y,theta);
temp_1=0;
temp_2=0;
temp_3=0;
temp_1=theta(1)-sum((alpha/m)*(X*theta-y).*X(:,1));
temp_2=theta(2)-sum((alpha/m)*(X*theta-y).*X(:,2));
temp_3=theta(3)-sum((alpha/m)*(X*theta-y).*X(:,3));
theta=[temp_1 ; temp_2 ; temp_3];





    % ============================================================

    % Save the cost J in every iteration    

end

end
