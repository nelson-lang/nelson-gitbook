#import "../nelson_help.typ": *

= ridge <statistics:5_regression.ridge>

Regression ridge.

== Syntaxe

- #raw("B = ridge(y, X, k)");
- #raw("B = ridge(y, X, k, scaled)");

== Description

#strong[ridge]; retourne les coefficients de modeles de regression ridge du vecteur reponse #strong[y]; sur la matrice de predicteurs #strong[X];.

 Les predicteurs sont centres et reduits avant l'ajustement. Si #strong[scaled]; vaut #strong[0];, les coefficients sont ramenes a l'echelle d'origine des predicteurs et une ligne d'interception est incluse.


== Exemple

``````matlab
y = [1; 2.1; 2.9; 4.2; 5.1; 5.9];
X = [(1:6)' [2; 1; 4; 3; 7; 6]];
B = ridge(y, X, [0 0.5 2])
``````


== Voir aussi

#nlink(<statistics:5_regression.regress>)[regress];, #nlink(<statistics:5_regression.robustfit>)[robustfit];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
