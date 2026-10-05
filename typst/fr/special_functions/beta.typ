#import "nelson_help.typ": *

= beta <special_functions:beta>

Fonction bêta

== Syntaxe

- #raw("B = beta(Z, W)");

== Argument d'entrée

/ Z: scalaire, vecteur, ou matrice réel.
/ W: scalaire, vecteur, ou matrice réel.

== Argument de sortie

/ B: valeur de la fonction bêta.

== Description

#strong[beta]; calcule la fonction bêta B(Z,W) \= gamma(Z).\*gamma(W).\/gamma(Z+W).


== Exemple

``````matlab
B = beta(2, 3)
``````


== Voir aussi

#nlink(<special_functions:betaln>)[betaln];, #nlink(<special_functions:gamma>)[gamma];, #nlink(<special_functions:gammaln>)[gammaln];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
