rows = 3;
cols = 3;

M = []
for r = 1:rows
    for c = 1:cols
        fprintf('Enter the value for row %d column %d',r,c);
        M(r,c) = input(': ');
    end
end