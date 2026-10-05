#import "../nelson_help.typ": *

= cumtrapz <linear_algebra:1_linear_systems.cumtrapz>

Integration numerique cumulative par la methode des trapezes.

== Syntaxe

- #raw("Z = cumtrapz(Y)");
- #raw("Z = cumtrapz(X, Y)");
- #raw("Z = cumtrapz(Y, dim)");
- #raw("Z = cumtrapz(X, Y, dim)");

== Argument d'entrée

/ Y: vecteur ou matrice (reel ou single)
/ X: espacement des points : vecteur
/ dim: dimension : entier positif scalaire

== Argument de sortie

/ Z: integrale cumulative : meme taille que Y.

== Description

#strong[cumtrapz(Y)]; calcule l'integrale cumulative de #strong[Y]; par la methode des trapezes avec un espacement unitaire, selon la premiere dimension non singuliere.

 #strong[cumtrapz(X, Y)]; integre #strong[Y]; par rapport aux coordonnees donnees par #strong[X];.

 Le resultat a la meme taille que #strong[Y];, et sa premiere valeur selon la dimension de travail vaut #strong[0];.


== Exemple

``````matlab
x = 0:0.1:pi;
Z = cumtrapz(x, sin(x))
``````


== Voir aussi

#nlink(<linear_algebra:1_linear_systems.trapz>)[trapz];, #nlink(<data_analysis:cumsum>)[cumsum];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
