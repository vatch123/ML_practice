function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
theta= [theta(1);theta(2)]; %ensure theta is 2x1
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
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
    %       of the cost function (computeCost) and gradient here.
    %
    
    deriv=  ((X*theta)-y);
    deriv= X' * deriv;
    deriv=deriv/m;
    % printf("------------------ %d  %d",deriv1,deriv2);

    theta(1)=theta(1)-alpha*deriv(1);
    theta(2)=theta(2)-alpha*deriv(2);








    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end;
end
