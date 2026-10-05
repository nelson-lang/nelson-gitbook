#import "../nelson_help.typ": *

= quantile <statistics:1_descriptive_statistics_visualization.quantile>

Quantiles d'un jeu de données.

== Syntaxe

- #raw("Q = quantile(A, p)");
- #raw("Q = quantile(A, n)");
- #raw("Q = quantile(A, p, dim)");
- #raw("Q = quantile(A, p, vecdim)");
- #raw("Q = quantile(A, p, 'all')");
- #raw("Q = quantile(..., 'Method', method)");

== Description

#strong[quantile]; retourne les quantiles pour des probabilités dans l'intervalle \[0,1\]. Si le second argument est un entier supérieur à un, il est interprété comme le nombre de quantiles régulièrement espacés.

 Les valeurs #strong[NaN]; sont ignorées. Les méthodes supportées sont #strong[midpoint];, #strong[exact];, #strong[inclusive];, #strong[exclusive]; et #strong[approximate];.

 #strong[A]; peut être un tableau numérique réel, un tableau #strong[datetime]; ou un tableau #strong[duration];. Pour des données datetime ou duration, les quantiles ont la même classe et le même Format que #strong[A];, et les valeurs #strong[NaT]; sont ignorées comme les valeurs #strong[NaN];.


== Exemples

``````matlab
A = [2 5 6 10 11 13];
Q = quantile(A, [0.25 0.5 0.75])
``````

données datetime et duration

``````matlab
d = hours([1 2 3 4 10]);
Q = quantile(d, [0.25 0.5 0.75])
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.prctile>)[prctile];, #nlink(<statistics:1_descriptive_statistics_visualization.iqr>)[iqr];, #nlink(<statistics:1_descriptive_statistics_visualization.median>)[median];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
  [2.0.0], [données datetime et duration supportées.],
)

// Auteur: Allan CORNET
