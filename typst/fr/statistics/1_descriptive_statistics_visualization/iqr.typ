#import "../nelson_help.typ": *

= iqr <statistics:1_descriptive_statistics_visualization.iqr>

Écart interquartile.

== Syntaxe

- #raw("r = iqr(A)");
- #raw("r = iqr(A, dim)");
- #raw("r = iqr(A, vecdim)");
- #raw("r = iqr(A, 'all')");
- #raw("[r, q] = iqr(...)");

== Description

#strong[iqr]; retourne la différence entre le troisième et le premier quartile. Le second résultat optionnel contient le premier et le troisième quartile.

 Les dimensions peuvent être une dimension scalaire, un vecteur de dimensions ou #strong[all];.

 #strong[A]; peut être un tableau numérique réel, un tableau #strong[datetime]; ou un tableau #strong[duration];. Pour des données datetime, l'écart interquartile #strong[r]; est une duration et les quartiles #strong[q]; sont des valeurs datetime. Pour des données duration, #strong[r]; et #strong[q]; sont des durations. Les valeurs #strong[NaT]; sont ignorées comme les valeurs #strong[NaN];.


== Exemples

``````matlab
A = [2 5 6 10 11 13];
[r, q] = iqr(A)
``````

données datetime et duration

``````matlab
t = datetime(2024, 1, [1 3 5 7 30]);
[r, q] = iqr(t)
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.quantile>)[quantile];, #nlink(<statistics:1_descriptive_statistics_visualization.prctile>)[prctile];, #nlink(<statistics:1_descriptive_statistics_visualization.mad>)[mad];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
  [2.0.0], [données datetime et duration supportées.],
)

// Auteur: Allan CORNET
