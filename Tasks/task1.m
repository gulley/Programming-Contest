
[result,computeTime] = testSolver();
score = calculateScore(result,computeTime);
t = datetime("now");
commit = 0;

% Make the new table that correponds to the most recently tested file
tt = timetable(t, result, computeTime, score, commit);

ttAll = readtimetable("allSolvers.csv");
ttAll = [ttAll; tt];
writetimetable(ttAll,"allSolvers.csv")

