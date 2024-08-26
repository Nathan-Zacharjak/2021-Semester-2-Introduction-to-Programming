function [matches] = findMatches(dictionary, str)
    % Takes a vector of strings (dictionary) and returns 
    % any matching words to str or words conatining str
    matches = [];
    for i = 1:length(dictionary)
        if length(strfind(dictionary(i),str))>0
            matches = [matches dictionary(i)];
        end
    end
end