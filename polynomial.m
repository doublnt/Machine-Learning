X1 = [89 72 94 69];
X2 = X1 .^2;
y = [96 74 87 78];

X1 = (X1-mean(X1))./(max(X1)-min(X1))
X2 = (X2-mean(X2))./(max(X2)-min(X2))


X = zeros(4,3);
X(:,1) = ones(4,1);
X(:,2) = X1';
X(:,3) = X2';
X

y = y';

Theta = (pinv(X'*X))*X'*y;

H = Theta(1,1)+Theta(2,1)*69+Theta(3,1)*69*69

