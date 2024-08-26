% Adds the elements of pre-determined vector B
% onto the end of vector A, one element at a time
% in reveser order and displays A
clear

% Initilising input vectors
A=[];
B=[-1:0.5:1];

% Putting the elements of B at the end of A 
% in reverse
for i = 1:length(B)
   A = [A B(length(B) - i + 1)];
end

% Displaying A
fprintf("A is: \n");
fprintf("%0.2f ",A);
fprintf("\n");