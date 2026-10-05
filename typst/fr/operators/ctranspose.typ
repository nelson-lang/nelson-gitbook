#import "nelson_help.typ": *

= ctranspose <operators:ctranspose>

Renvoie la transposée conjuguée complexe : opérateur '

== Syntaxe

- #raw("C= ctranspose(A)");
- #raw("C = A'");

== Argument d'entrée

/ A: une variable

== Argument de sortie

/ C: résultat : transposée conjuguée complexe de A.

== Description

#strong[C \= ctranspose(A)]; renvoie la transposée conjuguée complexe de A.


== Exemples

``````matlab
A = 3
B = A'
``````

``````matlab
A = -i
B = A'
``````

``````matlab
 A = sparse(eye(3, 4) * i)
B = A'
``````


== Voir aussi

#nlink(<operators:transpose>)[transpose];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
