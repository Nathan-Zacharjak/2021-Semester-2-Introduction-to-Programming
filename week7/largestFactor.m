function [factor] = largestFactor(n)
    % Takes a number n and returns the largest factor of n (largest number
    % that divides n
    factor = 1;
    
    for number = 1:n-1
        if mod(n,number) == 0
            factor = number;
        end
    end
end