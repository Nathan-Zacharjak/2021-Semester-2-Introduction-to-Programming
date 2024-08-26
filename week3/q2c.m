% Adds the elements of pre-determined vector B
% interweaved into vector A, in a new vector C
% and displays C
clear

% Initilising input and output vectors
A=[-1:1];
B=[-0.5:1.5];
C=[];

% Interweaving A and B into vector C
for i = 1:length(A)
    C = [C A(i) B(i)];
end

% Displaying C
fprintf("C is: \n");
fprintf("%0.2f ",C);
fprintf("\n");