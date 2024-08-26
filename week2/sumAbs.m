% Takes 5 numbers from the user and displays the
% sum of the absolute values of those numbers
clear

% Prompts the user for a number 5 times
sum = 0;
for i = 1:5
    number = input("Enter a number: ");
    % Calculates the sum as the user enters numbers
    sum = sum + abs(number);
end

% Displays the sum
fprintf("The abs sum is: %0.2f\n", sum);