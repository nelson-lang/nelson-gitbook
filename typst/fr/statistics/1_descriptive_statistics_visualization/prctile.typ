#import "../nelson_help.typ": *

= prctile <statistics:1_descriptive_statistics_visualization.prctile>

Percentiles d'un jeu de données.

== Syntaxe

- #raw("P = prctile(A, pct)");
- #raw("P = prctile(A, pct, dim)");
- #raw("P = prctile(A, pct, vecdim)");
- #raw("P = prctile(A, pct, 'all')");
- #raw("P = prctile(..., 'Method', method)");

== Description

#strong[prctile]; retourne les percentiles pour des pourcentages dans l'intervalle \[0,100\].

 Les valeurs #strong[NaN]; sont ignorées. Les méthodes supportées sont #strong[midpoint];, #strong[exact];, #strong[inclusive];, #strong[exclusive]; et #strong[approximate];.

 #strong[A]; peut être un tableau numérique réel, un tableau #strong[datetime]; ou un tableau #strong[duration];. Pour des données datetime ou duration, #strong[P]; a la même classe et le même Format que #strong[A];, et les valeurs #strong[NaT]; sont ignorées comme les valeurs #strong[NaN];.


== Exemples

``````matlab
A = (1:5)' * (2:6);
P = prctile(A, [25 50 75], 1)
``````

données datetime et duration

``````matlab
t = datetime(2024, 1, [1 3 5 7 30]);
P = prctile(t, [25 50 75])
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.quantile>)[quantile];, #nlink(<statistics:1_descriptive_statistics_visualization.iqr>)[iqr];, #nlink(<statistics:1_descriptive_statistics_visualization.median>)[median];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
  [2.0.0], [données datetime et duration supportées.],
)

// Auteur: Allan CORNET
