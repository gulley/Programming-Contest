function score = calculateScore(result,computeTime)
    % The score will ultimately be based on both the result and the
    % computeTime. For now we'll just do a simple stand-in calculation.

    k_result = 5;
    k_computeTime = 100;
    score = k_result*result + k_computeTime*computeTime;

end