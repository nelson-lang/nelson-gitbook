#import "nelson_help.typ": *

= polyshape <geometry:polyshape>

Crée un polygone.

== Syntaxe

- #raw("pg = polyshape(x, y)");
- #raw("pg = polyshape(P)");

== Argument d'entrée

/ x, y: vecteurs des coordonnées des sommets du polygone.
/ P: une matrice N par 2 des sommets \[x y\].

== Argument de sortie

/ pg: un objet polyshape.

== Description

#strong[polyshape]; crée un polygone à partir de ses sommets. Les méthodes #strong[area];, #strong[perimeter]; et #strong[numsides]; l'interrogent, #strong[rotate]; et #strong[translate]; le transforment, et #strong[plot]; le trace comme un patch rempli (acceptant les propriétés nom-valeur de patch). #strong[rotate(pg, theta)]; tourne le polygone dans le sens trigonométrique de #strong[theta]; degrés autour de l'origine, ou d'un point de référence donné en troisième argument ; #strong[translate(pg, \[dx dy\])]; le décale.


== Exemple

``````matlab
f = figure();
pg = polyshape([0 1 1 0], [0 0 1 1]);
plot(pg, 'FaceColor', 'r');
area(pg)
``````


== Voir aussi

#nlink(<geometry:nsidedpoly>)[nsidedpoly];, #nlink(<geometry:polyarea>)[polyarea];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale.],
)

// Auteur: Allan CORNET
