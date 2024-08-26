% Tests treeSegment() with various test cases
clear
clc

n = 3;
disp("Expect: right-angle triangle of three lines of asterisks");
treeSegment(n);


n = 10;
disp("Expect: right-angle triangle of ten lines of asterisks");
treeSegment(n);

n = 2;
disp("Expect: right-angle triangle of two lines of asterisks");
treeSegment(n);
