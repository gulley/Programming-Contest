
# Contest Report
```matlab
% Read in the list of all solvers
solvers = readtimetable("allSolvers.csv");

% Get rid of bad entries
% The score may be infinite or negative. Neither is a good state.
ix = isinf(solvers.score)|(solvers.result<0);
solvers(ix,:) = [];
```

Here is the list of all the solvers

```matlab
solvers
```
| |t|result|computeTime|score|author|commit|
|:--:|:--:|:--:|:--:|:--:|:--:|:--:|
|1|06-May-2024 21:52:36|26.0168|0.3441|164.4961|'gulley'|'c51b2fcf7b51ebe382d55723d14c15474980b116'|
|2|06-May-2024 21:58:25|8.4475e+03|0.0104|4.2238e+04|'gulley'|'0b53da950386771ea06a279705761aca016bc1c5'|

```matlab
plot(solvers.computeTime,solvers.result,"-o")
```

![figure_0.png](report_media/figure_0.png)

```matlab
plot(solvers.t,solvers.result,"-o")
```

![figure_1.png](report_media/figure_1.png)
