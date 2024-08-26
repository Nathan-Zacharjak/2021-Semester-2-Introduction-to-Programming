% Asks for a total number of people in a city and gives an estimated total
% daily water use in kiloliters

population = input("Please input the total population of a city: ");

% Assume 2 people per household: https://profile.id.com.au/adelaide/
% household-size

% Assume 501 liters per household per day: https://www.abs.gov.au/ausstats/
% abs@.nsf/lookup/1345.4feature%20article1jan%202011

% Calculating the total kiloliters used per day based on the above
% assumptions
households = population / 2;
litersUsedPerDay = 501 * households;
kilolitersUsedPerDay = litersUsedPerDay / 1000;

% Displays the daily water consumption
disp("The total daily water consumption is estimated to be: " + ...
    kilolitersUsedPerDay + " kiloliters.")