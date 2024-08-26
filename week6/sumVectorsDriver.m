% Runs sumVectors() with different test cases to test it
clear

disp("Expect 10, got:");
disp(sumVectors([1,2], [3,4]));

disp("Expect 0, got:");
disp(sumVectors([5,5], [-5,-5]));

disp("Expect 20, got:");
disp(sumVectors([3,4,1], [2,6,4]));

disp("Expect 0, got:");
disp(sumVectors([0], [0]));

disp("Expect , got:");
disp(sumVectors([], []));

disp("Expect 0.8, got:");
disp(sumVectors([-0.5,-5], [1.3,5]));