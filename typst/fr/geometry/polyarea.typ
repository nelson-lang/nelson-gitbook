#import "nelson_help.typ": *

= polyarea <geometry:polyarea>

Aire d'un polygone.

== Syntaxe

- #raw("a = polyarea(x, y)");
- #raw("a = polyarea(x, y, dim)");

== Argument d'entrée

/ x, y: les coordonnées des sommets du polygone, vecteurs ou matrices de même taille.
/ dim: un entier positif : la dimension le long de laquelle courent les sommets (par défaut : la première dimension non singleton).

== Argument de sortie

/ a: l'aire du polygone.

== Description

#strong[polyarea]; renvoie l'aire du polygone dont les sommets sont donnés par #strong[x]; et #strong[y];, calculée par la formule du lacet (shoelace). Lorsque les entrées sont des matrices, l'aire est calculée pour chaque polygone le long de la dimension choisie.


== Exemple

``````matlab
a = polyarea([0 1 1 0], [0 0 1 1])
``````


== Voir aussi

#nlink(<geometry:convhull>)[convhull];, #nlink(<geometry:boundary>)[boundary];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale.],
)

// Auteur: Allan CORNET
