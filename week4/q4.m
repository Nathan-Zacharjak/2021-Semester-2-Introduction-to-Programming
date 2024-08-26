% Saves an image of a gradient square that goes from
% white on the left to black at the right
clear
close all

% make a 2d array of values.
imageData=[]; % set up an empty array
imSize=100;
numRows=imSize;
numCols=imSize;

%populate using a nested loop
for row=[1:numRows]
    imageRow=[]; %empty vector for row
    for col=[1:numCols]
        pixelVal= 1 -(col)/(imSize); % make a pixel val in 0..1
        imageRow=[imageRow pixelVal];  %add value for  pixel
    end
    imageData=[imageData; imageRow]; % add row of pixels
end


% display as an image
imshow(imageData);

% save as an image
imwrite(imageData,'test4.png');

% load an image
newImageData=imread('test4.png');
whos newImageData;
