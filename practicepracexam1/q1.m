clear

numbers = [];
n = input("How many numbers will you enter?: ");

for i= 1:n
    numbers(i) = input("Enter a number: ");
end

fprintf("\nYour numbers from outside to middle are: \n");
result = [];
for i= 1:n/2
    result = [result numbers(n-i+1) numbers(i)];
end

if mod(n,2)==1
    result=[result numbers(round(n/2))];
end
disp(result);