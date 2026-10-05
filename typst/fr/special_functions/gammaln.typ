#import "nelson_help.typ": *

= gammaln <special_functions:gammaln>

Logarithme de la fonction gamma

== Syntaxe

- #raw("R = gammaln(M)");

== Argument d'entrée

/ M: une matrice réelle simple ou double.

== Argument de sortie

/ R: résultat de la fonction gammaln.

== Description

La fonction#strong[gammaln(A)]; calcule le logarithme naturel de la fonction gamma pour une entrée donnée #strong[A];, exprimé comme #strong[gammaln(A) \= log(gamma(A))];.

 A doit être un nombre réel non négatif.

 L'utilisation de gammaln aide à prévenir les problèmes potentiels de sous-débordement et de débordement qui pourraient survenir si l'on calculait directement#strong[log(gamma(A))];.


== Exemple

``````matlab
R = gammaln([0:0.1:pi])
``````


== Voir aussi

#nlink(<special_functions:gamma>)[gamma];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
