#import "nelson_help.typ": *

= gammainc <special_functions:gammainc>

Fonction gamma incomplète

== Syntaxe

- #raw("Y = gammainc(X, A)");
- #raw("Y = gammainc(X, A, tail)");

== Argument d'entrée

/ X: valeurs réelles positives ou nulles.
/ A: valeurs réelles positives ou nulles.
/ tail: 'lower' (défaut) ou 'upper'.

== Argument de sortie

/ Y: fonction gamma incomplète régularisée.

== Description

#strong[gammainc]; retourne la fonction gamma incomplète régularisée inférieure évaluée aux éléments de X et A. gammainc(X, A, 'upper') retourne la version supérieure (complémentaire). X et A doivent être de même taille, ou l'un des deux peut être un scalaire.


== Exemple

``````matlab
Y = gammainc(0.5, 2)
``````


== Voir aussi

#nlink(<special_functions:gamma>)[gamma];, #nlink(<special_functions:gammaln>)[gammaln];, #nlink(<special_functions:betainc>)[betainc];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
