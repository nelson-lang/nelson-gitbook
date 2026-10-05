#import "nelson_help.typ": *

= primes <special_functions:primes>

Nombres premiers inférieurs ou égaux à la valeur d'entrée

== Syntaxe

- #raw("p = primes(n)");

== Argument d'entrée

/ n: scalaire, valeur entière réelle

== Argument de sortie

/ p: vecteur avec les nombres premiers.

== Description

#strong[p \= primes(n)]; retourne un vecteur ligne contenant tous les nombres premiers inférieurs ou égaux à n.

 Le type de données de p est le même que celui de n.


== Exemple

``````matlab
p = primes(15)
``````


== Voir aussi

#nlink(<special_functions:factor>)[factor];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
