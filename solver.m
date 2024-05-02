function ix = solver(x,lim)
    % Simple
    xcs = cumsum(x);
    ix = find(xcs < lim);
end