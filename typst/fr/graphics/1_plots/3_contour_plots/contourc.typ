#import "../../nelson_help.typ": *

= contourc <graphics:1_plots.3_contour_plots.contourc>

Calcul de matrice de contours

== Syntaxe

- #raw("M = contourc(Z)");
- #raw("M = contourc(X, Y, Z)");
- #raw("M = contourc(..., levels)");

== Argument d'entrée

/ X: Coordonnees x : vecteur ou matrice.
/ Y: Coordonnees y : vecteur ou matrice.
/ Z: Coordonnees z : matrice numerique.
/ levels: Niveaux de contours : nombre de niveaux, vecteur de niveaux ou \[k k\] pour un seul niveau.

== Argument de sortie

/ M: Matrice de contours a deux lignes.

== Description

#strong[contourc]; calcule la matrice de contours utilisee par les fonctions de trace, sans creer de figure, d'axes ou d'objet graphique.

 Chaque segment commence par une colonne d'en-tete. La premiere ligne contient le niveau et la deuxieme le nombre de points. Les colonnes suivantes contiennent les coordonnees x et y.


== Exemple

Calculer les contours d'une matrice.

``````matlab
Z = peaks(20);
M = contourc(Z, 5)
``````


== Voir aussi

#nlink(<graphics:1_plots.3_contour_plots.contour>)[contour];, #nlink(<graphics:1_plots.3_contour_plots.contourf>)[contourf];, #nlink(<graphics:1_plots.3_contour_plots.contour3>)[contour3];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [version initiale],
)

// Auteur: Allan CORNET
