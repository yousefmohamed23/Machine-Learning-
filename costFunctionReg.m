function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
H=theta' * X';
H_Log=sigmoid(H);
First_term=( y' * log(H_Log') );
Second_Term=((1-y') * log(1-H_Log'));
const=(1/m);
const2=((lambda)/(2*m));
theta_square=theta(2:end,:).^2;
reg_term=sum(const2 .* theta_square);
J=(const*(-First_term-Second_Term))+(reg_term);
Reg_theta=theta;
Reg_theta(1,1)=0;
grad=const* X' *(H_Log' - y )+(lambda/m)*Reg_theta;  


% =============================================================

end
