function ix = solver(x,lim)
    % Try a bunch of random permutations

    ix = find(x<lim,1);

    % remBest = inf;
    % 
    % rng(1)
    % 
    % for i = 1:30
    %     rp = randperm(length(x));
    %     xcs = cumsum(x(rp));
    %     ix = find(xcs < lim);
    %     ixTest = rp(ix);
    %     rem = lim - sum(x(ixTest));
    %     if rem < remBest
    %         ixBest = ixTest;
    %         remBest = rem;
    %     end
    % end
    % 
    % ix = ixBest;

end