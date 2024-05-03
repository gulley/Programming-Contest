
[result,computeTime] = testSolver();
score = calculateScore(result,computeTime);
t = datetime("now");
commit = 0;

% Make the new table that correponds to the most recently tested file
tt = timetable(t, result, computeTime, score, commit);

ttAll = readtimetable("allSolvers.csv");
ttAll = [ttAll; tt];
writetimetable(ttAll,"allSolvers.csv")



matlab.internal.liveeditor.executeAndSave('report.mlx')

% editorObj = matlab.desktop.editor.Document.openEditorForExistingFile(which('report.mlx'), 'Visible', 0);
% fileNameToExecute = editorObj.Filename;
% executionTime = matlab.internal.liveeditor.LiveEditorUtilities.execute(editorObj.Editor.RtcId, fileNameToExecute);
% editorObj.save;
% editorObj.closeNoPrompt;

export("report.mlx","report.md")