function [matches] = wordsWithAll(dictFile, characters)
    % Takes a name of a dictionary file and an array of characters and
    % returns an array of strings in the ductionary that contain all of the
    % characters
    
    if length(dictFile) == 0
        matches = [];
        return
    end
    
    % readDictionary() from week 6 interactive lecture:
    
    % reads a dictionary file in the same directory and 
    % returns a vector of strings in words.
    dictText=fileread(dictFile); % read in character arrays
    dictWords=splitlines(dictText); % split the text array into words
    dictWords=dictWords(1:end-1); % remove the last empty line

    % build the dictionary from a text array
    words=[]; % empty array
    for i = 1:length(dictWords)   
        % concatenate the string onto the end of the dictionary   
        words=[words string(dictWords(i))];
    end
    
    % Making all input characters unique so characters are not counted
    % twice
    characters = unique(characters);
    % Initilising matches as nothing, in case no words match with the given
    % characters
    matches = [];
    
    % Going thorugh each word one at a time,
    for i = 1:length(words)
        % Counting if every character has been found,
        matchingCount = 0;
        for j = 1:length(characters)
            % Go through each character and count if a character has been
            % found in the word
            if contains(words(i),characters(j))
                matchingCount = matchingCount + 1;
            end
        end
        
        % If all characters were found, add the word to the vector of words
        % that will be returned
        if matchingCount >= length(characters)
            matches = [matches words(i)];
        end
    end
end