function ix = solver(x, lim)
    n = length(x);
    DP = zeros(n+1, lim+1);
    for i = 1:n
        for w = 1:lim
            if x(i) <= w
                DP(i+1, w) = max(x(i) + DP(i, w-x(i)), DP(i, w));
            else
                DP(i+1, w) = DP(i, w);
            end
        end
    end
    ix = [];
    w = lim;
    for i = n:-1:1
        if DP(i+1, w) ~= DP(i, w)
            ix = [i, ix];
            w = w - x(i);
        end
    end
end
