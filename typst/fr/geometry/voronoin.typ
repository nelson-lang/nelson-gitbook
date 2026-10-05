#import "nelson_help.typ": *

= voronoin <geometry:voronoin>

Diagramme de Voronoi en N dimensions

== Syntaxe

- #raw("[V, C] = voronoin(P)");
- #raw("[V, C] = voronoin(P, options)");

== Description

#strong[voronoin]; calcule les sommets et cellules de Voronoi pour les points d'entree.

 #strong[V]; contient les sommets et #strong[C]; est un tableau de cellules d'indices a partir de un.


== Exemple

Sommets et cellules de Voronoi pour des points plans.

``````matlab
P = [0 0; 1 0; 1 1; 0 1];
[V, C] = voronoin(P)
``````


== Voir aussi

#nlink(<geometry:voronoi>)[voronoi];, #nlink(<geometry:delaunayn>)[delaunayn];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale.],
)

// Auteur: Allan CORNET
