#import "nelson_help.typ": *

= nsidedpoly <geometry:nsidedpoly>

Crée un polygone régulier.

== Syntaxe

- #raw("pg = nsidedpoly(n)");
- #raw("pg = nsidedpoly(n, 'Center', c)");
- #raw("pg = nsidedpoly(n, 'Radius', r)");
- #raw("pg = nsidedpoly(n, 'SideLength', s)");

== Argument d'entrée

/ n: le nombre de côtés (un entier \>\= 3).
/ 'Center': le centre \[x y\] (par défaut \[0 0\]).
/ 'Radius': le rayon du cercle circonscrit.
/ 'SideLength': la longueur de chaque côté.

== Argument de sortie

/ pg: un polyshape du polygone régulier.

== Description

#strong[nsidedpoly]; renvoie un polygone régulier à #strong[n]; côtés sous forme de #strong[polyshape];. Sans rayon ni longueur de côté, le polygone a une aire unitaire.


== Exemple

``````matlab
f = figure();
plot(nsidedpoly(6, 'Radius', 2));
axis equal
``````


== Voir aussi

#nlink(<geometry:polyshape>)[polyshape];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale.],
)

// Auteur: Allan CORNET
