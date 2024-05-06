function processSolver(commitActor,commitHash)

    [result,computeTime] = testSolver();
    score = calculateScore(result,computeTime);
    t = datetime("now");

    % Make the new table that correponds to the most recently tested file
    tt = timetable(t, result, computeTime, score, commitActor, commitHash);

    ttAll = readtimetable("allSolvers.csv");
    ttAll = [ttAll; tt];
    writetimetable(ttAll,"allSolvers.csv")

    matlab.internal.liveeditor.executeAndSave('report.mlx')
    export("report.mlx","report.md")

end