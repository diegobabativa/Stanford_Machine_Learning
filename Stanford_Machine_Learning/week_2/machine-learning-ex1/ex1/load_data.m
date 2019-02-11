%% Load Data
data = load('ex1data2.txt');
X = data(:, 1:2);
y = data(:, 3);
m = length(y);

X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

for i=1:size(X,2)
mu(i) = mean(X(:,i))  
sigma(i) = std(X(:,i))
X_norm(:,i) = (X(:,i)-mu(i))/sigma(i)
end