% Takes a pre-defined vector of years and outputs
% the years that are leap years in a new vector
% leapYears and displays it
clear

% Initilising input and output vector
years=[2015:2041];
leapYears=[];

% Puts any leap years into leapYears
for i= 1:length(years)
    if mod(years(i),4) == 0
        leapYears = [leapYears years(i)];
    end 
end

% Displays the leap years
fprintf("Leap years: ");
fprintf("%d ",leapYears);
fprintf("\n");