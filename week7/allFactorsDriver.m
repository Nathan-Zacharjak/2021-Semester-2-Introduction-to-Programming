% Tests allFactors() with various test cases
clear
clc

disp("10, expect 1, 2, 5");
disp(allFactors(10));

disp("17, expect 1");
disp(allFactors(17));

disp("0, expect ");
disp(allFactors(0));

disp("-3, expect ");
disp(allFactors(-3));

disp("9, expect 1, 3");
disp(allFactors(9));

disp("4.5, expect ");
disp(allFactors(4.5));