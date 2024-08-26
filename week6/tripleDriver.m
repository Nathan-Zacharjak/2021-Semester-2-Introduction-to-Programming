% Runs triple() with different test cases to test it
clear

% Inputs
inputs = [0, 3, 12, -1, 0.5, 1000/3];
% Expected outputs
outputs = [0, 9, 36, -3, 1.5, 1000];

% Loop over all inputs and print the result and what was expected
for i = 1:length(inputs)
    input = inputs(i);
    expectedOutput = outputs(i);
    
    tripledNum = triple(input);
    
    fprintf("Expect:\t%.2f\nGot:\t%.2f\n\n", expectedOutput, tripledNum);
end
