#import "nelson_help.typ": *

= polyval <polynomial_functions:polyval>

Évaluation polynomiale.

== Syntaxe

- #raw("y = polyval(p, x)");
- #raw("y = polyval(p, x, S)");
- #raw("y = polyval(p, x, S, mu)");
- #raw("[y, delta] = polyval(p, x, S)");
- #raw("[y, delta] = polyval(p, x, S, mu)");

== Argument d'entrée

/ p: vecteur : coefficients du polynôme
/ x: points d'évaluation
/ S: structure : structure d'estimation d'erreur, la deuxième sortie de polyfit (champs R, df et normr). Requise pour calculer delta.
/ mu: vecteur de deux éléments : centrage et mise à l'échelle, la troisième sortie de polyfit. Le polynôme est évalué en (x - mu(1)) \/ mu(2).

== Argument de sortie

/ y: vecteur : valeurs de la fonction
/ delta: vecteur : estimation de l'erreur type pour chaque valeur, calculée à partir de S.

== Description

#strong[polyval]; évalue un polynôme en plusieurs points.

 Lorsque #strong[mu]; est fourni, le polynôme est évalué aux points centrés et mis à l'échelle (x - mu(1)) \/ mu(2), en accord avec un ajustement produit par #strong[polyfit]; avec trois sorties.

 Lorsque la deuxième sortie #strong[delta]; est demandée, #strong[S]; doit être fournie et sert à retourner une estimation de l'erreur type de la prédiction.


== Exemple

``````matlab

p = [3 2 1];
x = [5 7 9];
R = polyval(p, x)
``````


== Voir aussi

#nlink(<polynomial_functions:polyvalm>)[polyvalm];, #nlink(<polynomial_functions:polyfit>)[polyfit];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
