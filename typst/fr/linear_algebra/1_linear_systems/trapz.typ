#import "../nelson_help.typ": *

= trapz <linear_algebra:1_linear_systems.trapz>

Integration numerique par la methode des trapezes.

== Syntaxe

- #raw("Z = trapz(Y)");
- #raw("Z = trapz(X, Y)");
- #raw("Z = trapz(Y, dim)");
- #raw("Z = trapz(X, Y, dim)");

== Argument d'entrée

/ Y: vecteur ou matrice (reel ou single)
/ X: espacement des points : vecteur
/ dim: dimension : entier positif scalaire

== Argument de sortie

/ Z: integrale : scalaire, vecteur ou matrice.

== Description

#strong[trapz(Y)]; calcule l'integrale approchee de #strong[Y]; par la methode des trapezes avec un espacement unitaire, selon la premiere dimension non singuliere.

 #strong[trapz(X, Y)]; integre #strong[Y]; par rapport aux coordonnees donnees par #strong[X];.

 Utilisez #strong[dim]; pour integrer selon une dimension donnee.


== Exemple

``````matlab
x = 0:0.1:pi;
Z = trapz(x, sin(x))
``````


== Voir aussi

#nlink(<linear_algebra:1_linear_systems.cumtrapz>)[cumtrapz];, #nlink(<data_analysis:sum>)[sum];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
