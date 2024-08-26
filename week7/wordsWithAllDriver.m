% Tests wordsWithAll() with various test cases
clear
clc

disp("Expect: authorized mozambique unauthorized");
disp(wordsWithAll('dictionary_long.txt', 'aeiouz'));


disp("Expect: maximize");
disp(wordsWithAll('dictionary_long.txt', 'xz'));


disp("Expect: literally the entire dictionary, since all strings " + ...
    "have a nothing character");
disp(wordsWithAll('dictionary_long.txt', ''));


disp("Expect: no output");
disp(wordsWithAll('dictionary_long.txt', 'abcdefghijklmnopqrstuvwxyz'));


disp("Expect: no output");
disp(wordsWithAll('dictionary_long.txt', ';[-'));


disp("Expect: maximize");
disp(wordsWithAll('dictionary_long.txt', 'xxxxxzzzzz'));


disp("Expect: no output");
disp(wordsWithAll('', 'xz'));
