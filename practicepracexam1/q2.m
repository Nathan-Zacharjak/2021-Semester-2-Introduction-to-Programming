clear

A = [5,4,5,7,3];
index = 0;

for i = 1:length(A)
    if mod(A(i),3) == 0 && index == 0
        index = i;
    end
end

fprintf("The index of the first number divisible by 3 is: %d\n", index);