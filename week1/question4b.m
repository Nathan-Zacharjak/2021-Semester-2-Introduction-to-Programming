%Takes the population of a city and esitmates the total daily cost of
%transport for those people driving a car
population = input("Please input the population of the city: ");

%Assume there is a fixed ratio of cars to people, everyone drives 10km each
%day and only pays the cost of fuel

%Assume 134.5 cents per litre: https://www.accc.gov.au/system/files/Report%20on%20the%20Australian%20petroleum%20market%20June%20quarter%202018.pdf
%Assume 10.8 litres per 100 kilometers: https://www.abs.gov.au/statistics/industry/tourism-and-transport/survey-motor-vehicle-use-australia/12-months-ended-30-june-2018
%Assume 24,992,400 people in Australia: https://www.abs.gov.au/AUSSTATS/abs@.nsf/Lookup/3101.0Main+Features1Jun%202018?OpenDocument=
%Assume 14,258,620 cars in Australia: https://www.abs.gov.au/statistics/industry/tourism-and-transport/survey-motor-vehicle-use-australia/12-months-ended-30-june-2018

%Cost = km * $/litre * litres/km * cars/person * population
cost = (10 * 1.345 * (10.8/100)) * 14258620/24992400 * population;

disp("The total daily cost of transport for those driving a car: $" + cost);