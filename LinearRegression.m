function J = LinearRegression(x,y,theta)

m = size(x,1);
predication = x*theta;
sqrErrors = (predication-y).^2;

J = 1/(2*m) * sum(sqrErrors);

end