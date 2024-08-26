% Takes the Kand.png image and saves a copy of it that is flipped
% both vertically and horizintally
clear
close all

% make a 2d array of values.
imageData=[]; % set up an empty array
% Grabs the image as a 2D array of numbers and its dimensions
imageDataRead=imread("Kand.png");
imSize=size(imageDataRead);
numRows=imSize(1);
numCols=imSize(2);

%populate using a nested loop
for row=[1:numRows]
    imageRow=[]; %empty vector for row
    for col=[1:numCols]
        % Grabs the pixels from the image starting from the last row and 
        % column to the first row and column
        pixelVal= imageDataRead(numRows - row + 1, numCols - col + 1);
        imageRow=[imageRow pixelVal];  %add value for  pixel
    end
    imageData=[imageData; imageRow]; % add row of pixels
end


% display as an image
imshow(imageData);

% save as an image
imwrite(imageData,'KandFlipped.png');

% load an image
newImageData=imread('KandFlipped.png');
whos newImageData;