function [sum] = sumVectors(v1, v2)
    % Takes 2 vectors of the same length, and returns the total sum of all
    % their elements
    sum = 0;
    for i = 1:length(v1)
        sum = sum + v1(i) + v2(i);
    end
end