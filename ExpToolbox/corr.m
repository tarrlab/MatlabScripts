function r = corr(x,y)%CORR calculates correlation, Pearson r statistic%    usage: r = corr(x,y), where x and y are equal sized arrays of numbers%    returns: r = Pearson r%    %    Formula's for calculation taken from Rosenthal and Rosnow, 2nd ed., 1991%    "Essentials of Behavioral Research", pages 277-278%    %	StatToolbox.n = max(size(x));temp = max(size(y));if n ~= temp	error('Arrays must be of equal size!');endif n == 0	error('No data points!');endif n == 1	error('Not enough data points!');endr = ((n * sum(x.*y)) - (sum(x) * sum(y))) / sqrt(((n* sum(x.^2)) - (sum(x)^2)) * ((n* sum(y.^2)) - (sum(y)^2)));