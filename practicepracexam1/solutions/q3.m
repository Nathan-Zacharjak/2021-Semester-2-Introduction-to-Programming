A = [5,4,6,7,3 ; 1,2,3,4,5 ; 5,6,4,2,4 ; 4,5,3,2,1];

[rows, cols] = size(A);

for r = 1:rows
    for c = 1:cols
        if r==1 || r==rows || c==1 || c==cols
            fprintf('%d ', A(r,c));
        else
            fprintf('  ');
        end
    end
    fprintf('\n');
end
    