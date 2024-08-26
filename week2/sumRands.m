% Generates 5 random integer values between 1 and 10
% and displays the sum of those numbers
clear

% Does a running sum of 5 random integers from 1 to 10
sum = 0;
for i = 1:5
    randomNum = round(rand()*9)+1;
    sum = sum + randomNum;
end

% Displays the sum
disp(sum)