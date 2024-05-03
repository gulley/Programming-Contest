
```matlab
ld = readtimetable("allSolvers.csv");
ld(1,:) = []
```
| |t|result|computeTime|score|commit|
|:--:|:--:|:--:|:--:|:--:|:--:|
|1|02-May-2024 21:43:39|172.0743|0.0118|861.5540|0|
|2|03-May-2024 16:37:51|103.1756|0.1964|535.5132|0|
|3|03-May-2024 16:52:19|49.7914|0.2193|270.8836|0|

```matlab
plot(ld.computeTime,ld.result,"-o")
```

![figure_0.png](report_media/figure_0.png)

```matlab
plot(ld.t,ld.result,"-o")
```

![figure_1.png](report_media/figure_1.png)
