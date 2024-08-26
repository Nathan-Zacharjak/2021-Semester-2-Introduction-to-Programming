% Takes a pre-defined vector of numbers A, and displays the
% cube of each element of A, stored in a new vector B
clear

% Creates the input and output vectors
A=[4.5 1.1 pi];
B=zeros(1,length(A));

% Calculates B
for i = 1:length(A)
    B(i) = round(A(i)^3,2);
end

% Displays B
fprintf("B is:\n");
fprintf("%0.2f ", B);
fprintf("\n");