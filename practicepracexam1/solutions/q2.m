A = [6, 4, 8, 7, 3]

index = 0;

for i = length(A):-1:1
    if mod(A(i),3) == 0
        index = i;
    end
end

fprintf('The index of the first number divisible by 3 is %d\n', index);

    
    