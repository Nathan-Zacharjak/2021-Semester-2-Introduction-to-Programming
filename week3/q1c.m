% Takes a pre-defined vector of numbers A, and displays the
% cube of each element of A, stored in a new vector B
% plots a agains B and C on one graph
clear

% Creates the input and output vectors
A=[-10:5:10];
B=zeros(1,length(A));
C=zeros(1,length(A));

% Calculates the output vectors
for i = 1:length(A)
    B(i) = round(A(i)^3,2);
    C(i) = round(pow2(A(i)),3,'significant');
end

% Plotting A vs. B and C on the same graph
close all
hold on
plot(B);
plot(C);
legend("B","C")
xlabel("A")
hold off

% Displays the vector B
fprintf("B is:\n");
fprintf("%0.2f ", B);
fprintf("\n");

% Displays the vector C
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