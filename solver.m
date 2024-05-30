function ix = solver(x, lim)
    bestSum = 0;
    ix = [];
    n = length(x);
    for i = 1:2^n-1
        mask = bitget(i, 1:n);
        currentSum = sum(x(mask));
        if currentSum > bestSum && currentSum <= lim
            bestSum = currentSum;
            ix = find(mask);
        end
    end
end
