% Saves an image of a gradient square that goes from
% white in the corners to black in the center
clear
close all

% make a 2d array of values.
imageData=[]; % set up an empty array
imSize=100;
numRows=imSize;
numCols=imSize;
imgCentre = round([numRows/2,numCols/2]);

%populate using a nested loop
for row=[1:numRows]
    imageRow=[]; %empty vector for row
    for col=[1:numCols]
        rowDistance = abs(imgCentre(1) - row);
        colDistance = abs(imgCentre(2) - col);
        pixelVal=(rowDistance+colDistance)/(imSize); % make a pixel val in 0..1
        imageRow=[imageRow pixelVal];  %add value for  pixel
    end
    imageData=[imageData; imageRow]; % add row of pixels
end


% display as an image
imshow(imageData);

% save as an image
imwrite(imageData,'test5.png');

% load an image
newImageData=imread('test5.png');
whos newImageData;
