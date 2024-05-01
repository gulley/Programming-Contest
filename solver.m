function ix = solver(x,lim)
    xcs = cumsum(x);
    ix = find(xcs < lim);
end