#import "../nelson_help.typ": *

= histc <elementary_functions:7_indexing_dimensions.histc>

Comptage d'histogramme avec bornes explicites.

== Syntaxe

- #raw("N = histc(X, edges)");
- #raw("[N, bin] = histc(X, edges)");
- #raw("N = histc(X, edges, dim)");

== Argument d'entrée

/ X: Tableau numerique ou logique.
/ edges: Vecteur numerique de bornes.
/ dim: Dimension de travail.

== Argument de sortie

/ N: Comptages pour chaque intervalle.
/ bin: Indice de classe pour chaque element de X.

== Description

#strong[histc]; compte les valeurs dans les classes definies par #strong[edges];. Les valeurs egales a la derniere borne sont comptees dans la derniere classe.


== Exemple

``````matlab
[N, bin] = histc([0 1 1.5 2], [0 1 2])
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.histcounts>)[histcounts];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
