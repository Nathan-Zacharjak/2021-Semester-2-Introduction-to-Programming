size = input('How many numbers will you enter?: ');
numbers = [];

for i = 1:size
    value = input('Enter a number: ');
    numbers = [numbers, value];
end

fprintf('Your numbers from outside to middle are ');

for i = 1:size/2
    fprintf('%d %d ', numbers(length(numbers)+1-i), numbers(i));
end
% print middle if odd number
if mod(size, 2) == 1
    fprintf('%d', numbers(round(size/2)));
end
fprintf('\n');