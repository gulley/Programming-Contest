
[result,computeTime] = testSolver();
score = calculateScore(result,computeTime);
t = datetime("now");
commit = 0;

% Make the new table that correponds to the most recently tested file
tt = timetable(t, result, computeTime, score, commit);

ttAll = readtimetable("allSolvers.csv");
ttAll = [ttAll; tt];
writetimetable(ttAll,"allSolvers.csv")

ttLeaders = readtimetable("leaders.csv");
bestScore = min(ttLeaders.score);
if score < bestScore
    ttLeaders = [ttLeaders; tt];
    writetimetable(ttLeaders,"leaders.csv")
end

function score = calculateScore(result,computeTime)
    % The score will ultimately be based on both the result and the
    % computeTime. For now we'll just do a simple stand-in calculation.

    score = 10*result;

end