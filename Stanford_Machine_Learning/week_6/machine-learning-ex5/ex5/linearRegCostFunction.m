function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

# The best way is separate the formule in some variables:

h = X * theta
h_error = h-y
first = (1/(2*m)) * sum(h_error .^2) 

twb = theta(2:end)
sumCuadradoTheta = sum(twb .^ 2 )
second = (lambda/(2*m)) * sumCuadradoTheta

J = first + second;

grad =  (1/m) * X' * h_error
grad(2:end) += (lambda / m ) * twb


% =========================================================================

grad = grad(:);

end
