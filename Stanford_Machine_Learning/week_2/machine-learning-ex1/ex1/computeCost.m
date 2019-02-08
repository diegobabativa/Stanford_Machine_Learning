function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.


%First approach {Doesn�t Works :( }
%for i = 1:m
%    J = J + 1/(2*m) * (((theta(1:1) + theta(2:2))*X(i,1)) - y(i,1)).^2 
%endfor    

%Second approach {It Works !}
%predictions = X * theta
%square_errors = (predictions - y).^2
%J = 1/(2*m) * sum(square_errors)

%third Approach (The best solution (Vectorized version)) {It Works !}
J = 1/(2*m)*(X*theta - y)' * (X*theta-y)

% =========================================================================

end
