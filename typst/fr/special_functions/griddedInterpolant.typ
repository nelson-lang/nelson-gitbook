#import "nelson_help.typ": *

= griddedInterpolant <special_functions:griddedInterpolant>

Objet d'interpolation de donnees sur grille

== Syntaxe

- #raw("F = griddedInterpolant(x, v)");
- #raw("F = griddedInterpolant(x, v, method)");
- #raw("F = griddedInterpolant(x, v, method, extrapolationMethod)");
- #raw("F = griddedInterpolant(gridVecs, V)");
- #raw("F = griddedInterpolant(X1, X2, ..., Xn, V)");
- #raw("F = griddedInterpolant(V)");
- #raw("Vq = F(xq)");
- #raw("Vq = F(xq1, xq2, ..., xqn)");
- #raw("Vq = F(queryGridVecs)");

== Argument d'entrée

/ x: un vecteur de points d'echantillonnage (grille 1-D), strictement croissant.
/ v: les valeurs aux points d'echantillonnage.
/ gridVecs: un tableau de cellules #strong[{x1, x2, ..., xn}]; de vecteurs de grille, un par dimension de #strong[V];.
/ V: un tableau de valeurs definies sur la grille.
/ method: une chaine de caracteres : #strong['linear']; (defaut), #strong['nearest'];, #strong['previous'];, #strong['next'];, #strong['pchip'];, #strong['cubic'];, #strong['spline']; ou #strong['makima'];.
/ extrapolationMethod: une chaine de caracteres choisissant la regle d'extrapolation : #strong['linear'];, #strong['nearest'];, #strong['previous'];, #strong['next'];, #strong['pchip'];, #strong['cubic'];, #strong['spline'];, #strong['makima']; ou #strong['none'];. Le defaut correspond a #strong[method];.

== Argument de sortie

/ F: un objet griddedInterpolant.
/ Vq: les valeurs interpolees aux points de requete.

== Description

#strong[griddedInterpolant]; stocke des points et des valeurs sur grille pour des requetes d'interpolation repetees.

 L'objet expose quatre proprietes accessibles en lecture et en ecriture : #strong[GridVectors]; (un tableau de cellules de vecteurs de grille), #strong[Values];, #strong[Method]; et #strong[ExtrapolationMethod];.

 On evalue l'interpolant en appelant l'objet comme une fonction, soit avec un tableau de requete par dimension, soit avec un unique tableau de cellules de vecteurs de requete.

 La methode #strong['cubic']; utilise la convolution cubique et requiert une grille a espacement uniforme ; sur une grille non uniforme elle bascule vers #strong['spline'];. La convolution cubique ne gere pas l'extrapolation : les points hors grille renvoient #strong[NaN]; lorsque #strong[ExtrapolationMethod]; vaut #strong['cubic'];.


== Exemples

Interpolation 1-D.

``````matlab
F = griddedInterpolant([1 2 3], [10 20 30]);
Vq = F(2.5)
``````

Grille N-D donnee comme un tableau de cellules de vecteurs de grille.

``````matlab
F = griddedInterpolant({1:3, 1:3}, magic(3));
Vq = F(2, 2)
``````

Interpolation spline et lecture des proprietes.

``````matlab
F = griddedInterpolant([1 2 3], [10 20 30], 'spline');
Vq = F(2.5);
F.Method
F.ExtrapolationMethod
``````


== Voir aussi

#nlink(<special_functions:interp1>)[interp1];, #nlink(<special_functions:interpn>)[interpn];, #nlink(<geometry:scatteredInterpolant>)[scatteredInterpolant];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale.],
)

// Auteur: Allan CORNET
