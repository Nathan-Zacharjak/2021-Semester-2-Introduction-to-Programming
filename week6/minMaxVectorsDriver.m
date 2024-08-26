% Runs minMaxVectors() with different test cases to test it
clear

disp("Expect min: 1, max: 4");
[min, max] = minMaxVectors([1 2],[3 4]);
disp("Got: min: " + min + " max: " + max);

disp("Expect min: -5, max: 5");
[min, max] = minMaxVectors([5],[-5]);
disp("Got: min: " + min + " max: " + max);

disp("Expect min: 1, max: 9");
[min, max] = minMaxVectors([1, 9],[5, 6]);
disp("Got: min: " + min + " max: " + max);

disp("Expect min: 1, max: 81");
[min, max] = minMaxVectors([70, 4, 1, 81, 10],[70, 4, 1, 81, 10]);
disp("Got: min: " + min + " max: " + max);

disp("Expect min: -0.3, max: -0.1");
[min, max] = minMaxVectors([-0.3, -0.2, -0.1],[-0.25, -0.21, -0.11]);
disp("Got: min: " + min + " max: " + max);

disp("Expect min: 0, max: 0");
[min, max] = minMaxVectors([0],[0]);
disp("Got: min: " + min + " max: " + max);