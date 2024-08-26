% Saves an image of a gradient square that goes from
% white at the top to black at the bottom
clear
close all

imageData=[]; % set up an empty array
imSize=100;
numRows=imSize;
numCols=imSize;

%populate using a nested loop
for row=[1:numRows]
    imageRow=[]; %empty vector for row
    for col=[1:numCols]
        pixelVal= 1 -(row)/(imSize); % make a pixel val in 0..1
        imageRow=[imageRow pixelVal];  %add value for  pixel
    end
    imageData=[imageData; imageRow]; % add row of pixels
end


% display as an image
imshow(imageData);

% save as an image
imwrite(imageData,'test2.png');

% load an image
newImageData=imread('test2.png');
whos newImageData;
