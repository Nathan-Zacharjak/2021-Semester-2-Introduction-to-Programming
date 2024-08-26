% Asks the user for the heights of 5 students
% and displays them all at once, once all have been
% entered
clear

% Creates a vector of heights from user input
heights = zeros(1,5);
for i = 1:5
    heights(i) = input("Enter height: ");
end

% Displays the stored heights, all at once
for i = 1:5
    disp(heights(i))
end