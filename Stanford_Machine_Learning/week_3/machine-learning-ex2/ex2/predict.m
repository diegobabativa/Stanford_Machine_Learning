function p = predict(theta, X)
%PREDICT Predict whether the label is 0 or 1 using learned logistic 
%regression parameters theta
%   p = PREDICT(theta, X) computes the predictions for X using a 
%   threshold at 0.5 (i.e., if sigmoid(theta'*x) >= 0.5, predict 1)

m = size(X, 1); % Number of training examples

% You need to return the following variables correctly
p = zeros(m, 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned logistic regression parameters. 
%               You should set p to a vector of 0's and 1's
%


%My first approach: It works !

#{
for index=1:m
 z =  theta(1)+ (theta(2)* X(index,2))+(theta(3)*X(index,3))
if sigmoid(z) >= 0.5
  p(index) = 1;
else
  p(index)  = 0;
endif
endfor
#}

#{
% Second approach (Advanced):
f=@(n) round(n);
s = sigmoid(X * theta);
p = f(s);
#}


%%Third Approach (My best solution)
 p = round (sigmoid(X * theta ))

% =========================================================================

end
