clear 

for i= 1:3
    for j= 1:3
        inputText = sprintf("Enter the values for row %d, column %d: ", i, j);
        A(i,j) = input(inputText);
    end
end

[rows, columns] = size(A);
oddCount = 0;

for i= 1:rows
    if i == 1 || i == rows
        for j= 1:columns
            if mod(A(i,j),2) ~= 0
                oddCount = oddCount + 1;
            end
        end
    else
        if mod(A(i,1),2) ~= 0
            oddCount = oddCount + 1;
        end
        
        if mod(A(i,columns),2) ~= 0 
            oddCount = oddCount + 1;
        end
    end
end

fprintf("There are %d odd values in the fence.\n", oddCount);