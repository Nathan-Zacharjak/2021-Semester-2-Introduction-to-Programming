A = [5,4,6,7,3 ; 1,2,3,4,5 ; 5,6,4,2,4 ; 4,5,3,2,1];

[rows, cols] = size(A);
odds = 0;

for r = 1:rows
    for c = 1:cols
        if r==1 || r==rows || c==1 || c==cols
            fprintf('%d ', A(r,c));
            if mod(A(r,c),2) == 1
                odds = odds + 1;
            end
        else
            fprintf('  ');
        end
    end
    fprintf('\n');
    end
fprintf('There are %d odd values in the fence', odds);
