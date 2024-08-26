function [small, big] = compareNums(num1,num2)
    % Takes 2 numbers, and returns the smaller number first, then the
    % larger one
    if num1 < num2
        small = num1;
        big = num2;
    else
        small = num2;
        big = num1;
    end
end