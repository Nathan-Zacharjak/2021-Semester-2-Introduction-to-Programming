%Runs compareNums() with different test cases to test it
clear

% Inputs
inputs = [2 3, 8 5, 1 -5, 3 3, 0 -0.5, -1 -5];
% Expected outputs
outputs = [2 3, 5 8, -5 1, 3 3, -0.5 0, -5 -1];

% Loop over all inputs and print the result and what was expected
for i = 1:2:length(inputs)
    input1 = inputs(i);
    input2 = inputs(i+1);
    expectedOutput1 = outputs(i);
    expectedOutput2 = outputs(i+1);
    
    [small, big] = compareNums(input1, input2);
    
    fprintf("Expect:\t%.2f, %.2f\nGot:\t%.2f, %.2f\n\n", ...
        expectedOutput1, expectedOutput2, small, big);
end
