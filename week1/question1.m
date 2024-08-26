% Takes a height, length and depth and calculates the volume

% - Need to read in the height, length and depth into their own variables
% - Multiply the lengths together and store into a variable
% - Print a message displaying the volume, nicely formatted

% Ask for the user to input height, length and depth
height = input("Please input the height: ");
length = input("Please input the length: ");
depth = input("Please input the depth: ");

volume = height * length * depth;

% Display the volume
disp("The volume is: " + volume);