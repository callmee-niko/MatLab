data = readtable("Global Fuel Consumption Data ME2026.csv");
disp(data)

totalG = sum(data.("Gasoline"), "omitnan");
fprintf("Total Gas = %.2f\n", totalG);

totalD = sum(data.("Diesel"), "omitnan");
fprintf("Total Diesel = %.2f\n", totalD);

totalK = sum(data.("Kerosene"), "omitnan");
fprintf("Total Kerosene = %.2f\n", totalK);

%% Total usage for each countries

countryNames = data{:, 1};
countryTotals = sum(table2array(data(:, 2:end)), 2, "omitnan");

for i = 1:numel(countryTotals)
    fprintf("%s: %.2f\n", string(countryNames(i)), countryTotals(i));
end

%% Total usage for the first four countries

firstFourNames = countryNames(1:4);
firstFourTotals = countryTotals(1:4);

for i = 1:numel(firstFourTotals)
    fprintf("%s: %.2f\n", string(firstFourNames(i)), firstFourTotals(i));
end

combinedFirstFour = sum(firstFourTotals, "omitnan");
fprintf("Combined total for first four countries = %.2f\n", combinedFirstFour);