#import "nelson_help.typ": *

= factor <special_functions:factor>

Facteurs premiers

== Syntaxe

- #raw("f = factor(n)");

== Argument d'entrée

/ n: scalaire entier réel, non négatif

== Argument de sortie

/ p: vecteur avec les facteurs premiers.

== Description

#strong[f \= factor(n)]; retourne un vecteur ligne avec les facteurs premiers de #strong[n];.

 Le vecteur #strong[f]; est du même type de données que #strong[n];.


== Exemple

``````matlab
f = factor(204)
``````


== Voir aussi

#nlink(<special_functions:primes>)[primes];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
