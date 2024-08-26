function [minSoFar, maxSoFar] = minMaxVectors(v1, v2)
    % Takes 2 vectors of the same length and returns the minimum and
    % maximum element between them
    
    minSoFar = v1(1);
    maxSoFar = v1(1);
    
    for i = 1:length(v1)
        % Checking if v1's element is the new max/min
        if minSoFar > v1(i)
            minSoFar = v1(i);
        elseif maxSoFar < v1(i)
            maxSoFar = v1(i);
        end
        
        % Checking if v2's element is the new max/min
        if minSoFar > v2(i)
            minSoFar = v2(i);
        elseif maxSoFar < v2(i)
            maxSoFar = v2(i);
        end
    end
end