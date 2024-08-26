% Prompts the user for a weight and height and
% prints out the BMI for that weight and height
clear

% Prompts the user for input
weight = input("Please enter your weight in kgs: ");
height = input("Please enter your height in m: ");

% Calculates the BMI
BMI = weight/(height^2);

% Displays the BMI
fprintf("Your BMI is: %0.2f\n", BMI);