function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
disp(num_iters);
disp(alpha);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

  hold = theta;
     
    for j = 1:length( theta ) 
     
        theta(j) =  hold(j) - ( alpha * sum(( X * hold - y ).*X( :,j ))) / m;
        
 
    end





    % ============================================================

    % Save the cost J in every iteration 
    disp(iter);   
    J_history(iter) = computeCost(X, y, theta);
    %disp(J_history(iter));
    %disp("theta");
    %disp(theta(iter));
    
    %theta(1) = theta(1) - (alpha/m).* J_history(iter);
    %theta(2) =theta(2) - (alpha/m).* J_history(iter).*X(iter);
    
end

end
