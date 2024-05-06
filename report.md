
```matlab
ld = readtimetable("allSolvers.csv");

% Get rid of bad entries
ix = isinf(ld.score);
ld(ix,:) = []
```
| |t|result|computeTime|score|author|commit|
|:--:|:--:|:--:|:--:|:--:|:--:|:--:|
|1|06-May-2024 21:06:17|-1|0|-1|'gulley'|'75300ae7d493637041100036e5d3688fab0669b4'|
|2|06-May-2024 21:30:44|8.4475e+03|0.0124|4.2239e+04|'gulley'|'af3705fb448b7d5caa7c3178305b69702954c9b7'|

```matlab
plot(ld.computeTime,ld.result,"-o")
```

![figure_0.png](report_media/figure_0.png)

```matlab
plot(ld.t,ld.result,"-o")
```

![figure_1.png](report_media/figure_1.png)
