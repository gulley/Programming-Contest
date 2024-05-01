function [result,t] = scorer()
    testsuite = load('testsuite.mat');
    tests = testsuite.tests;
    
    len = numel(tests);

    results = zeros(len,1);
    dt = datetime("now");

    for i = 1:len

        x = tests(i).x;
        lim = tests(i).lim;

        ix = solver(x,lim);

        % VALIDATE RESULTS
        % How close did the solution get to the limit?
        % Lower result is better
        results(i) = lim - sum(x(ix));

        if results(i) < 0
            result = -1;
            t = 0;
            return
        end
        
    end
    t = seconds(datetime("now") - dt);
    result = sum(results);
end