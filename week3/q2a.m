% Adds the elements of pre-determined vector B
% onto the end of vector A, one element at a time
% and displays A
clear

% Initilising input vectors
A=[0];
B=[-1:0.5:1];

% Putting all elements of B onto the end of A
for i = 1:length(B)
   A = [A B(i)]; 
end

% Displaying A
fprintf("A is: \n");
fprintf("%0.2f ",A);
fprintf("\n");