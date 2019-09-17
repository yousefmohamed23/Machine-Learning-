function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar);
%x=size(z);
%m=x(1,1);
%n=x(1,2);
%for i=1:m
 % for j=1:n
  %  g(i,j)=pinv(1+exp(-z(i,j)));
  %endfor
%endfor
%Faster than above algorithem 
ExpoTerm=1+exp(-z);
g=ExpoTerm .^ -1;




% =============================================================

end
