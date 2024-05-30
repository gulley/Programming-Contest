function ix = solver(x, lim)
    [xSorted, originalIndices] = sort(x, 'descend');
    
    remBest = inf;
    ixBest = [];

    rng(1); % For reproducibility

    numIterations = max(15, ceil(length(x) / 10));
    
    for i = 1:numIterations
        rp = randperm(length(xSorted));
        xcs = cumsum(xSorted(rp));
        ix = find(xcs <= lim, 1, 'last');
        if ~isempty(ix)
            ixTest = originalIndices(rp(1:ix));
            rem = lim - sum(x(ixTest));
            if rem < remBest
                ixBest = ixTest;
                remBest = rem;
                if remBest == 0
                    break;
                end
            end
        end
    end

    ix = ixBest;
end
