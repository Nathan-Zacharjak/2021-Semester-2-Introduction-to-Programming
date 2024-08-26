function [factors] = allFactors(n)
    % Takes a number n and returns a vector of all the factors of n
    % (numbers that divide n)
    
    factors = [];
    
    for number = 1:n-1
        if mod(n,number) == 0
            factors = [factors, number];
        end
    end
end