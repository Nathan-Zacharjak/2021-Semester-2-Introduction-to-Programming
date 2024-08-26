function treeSegment(n)
    % Takes a number n, and prints a triangle segment of half a christmas
    % tree
    for row = 1:n
        for column = 1:row
            fprintf("* ");
        end
        fprintf("\n");
    end
end