clear 

A = [ 5, 4, 6, 7, 3 ; 1, 2, 3, 4, 5 ; 5, 6, 4, 2, 4 ; 4, 5, 3, 2, 1];
[rows, columns] = size(A);

for i= 1:rows
    if i == 1 || i == rows
        for j= 1:columns
            fprintf("%d\t",A(i,j));
        end
    else
        fprintf("%d\t",A(i,1));
        
        for j= 2:(columns-1)
            fprintf("\t");
        end
        
        fprintf("%d\t",A(i,columns));
    end
    
    fprintf("\n");
end