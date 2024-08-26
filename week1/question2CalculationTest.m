%Test caclulating the kiloliters used per day given a population
population = 1000000;

%Assume 2 people per household: https://profile.id.com.au/adelaide/household-size
%Assume 501 liters per household per day: https://www.abs.gov.au/ausstats/abs@.nsf/lookup/1345.4feature%20article1jan%202011

households = population / 2;
litersUsedPerDay = 501 * households;
kilolitersUsedPerDay = litersUsedPerDay / 1000