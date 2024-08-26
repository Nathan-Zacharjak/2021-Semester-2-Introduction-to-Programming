% Takes a pre-defined vector of numbers A, and displays the
% cube of each element of A, stored in a new vector B
clear

% Creates the input and output vectors
A=[-100 -0 100];
B=zeros(1,length(A));
C=zeros(1,length(A));

% Calculates the output vectors
for i = 1:length(A)
    B(i) = round(A(i)^3,2);
    C(i) = round(pow2(A(i)),3,'significant');
end

% Displays the vector B
fprintf("B is:\n");
fprintf("%0.2f ", B);
fprintf("\n");

% Displays the vector C, the format of the numbers
% depends on how large the number is to ensure
% the numbers are readable
fprintf("C is:\n");
for i = 1:length(C)
    if C(i) < 0.00001 
       fprintf("%0.2e ", C(i));
    elseif C(i) > 100000
        fprintf("%0.2e ", C(i));
    else
       fprintf("%f ", C(i)); 
    end
end
fprintf("\n");