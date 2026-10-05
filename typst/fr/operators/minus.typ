#import "nelson_help.typ": *

= minus <operators:minus>

Soustraction, opérateur -

== Syntaxe

- #raw("C = minus(A, B)");
- #raw("C = A - B");

== Argument d'entrée

/ A: une variable
/ B: une variable

== Argument de sortie

/ C: résultat de A - B

== Description

#strong[C \= minus(A, B)]; effectue la soustraction A - B des variables.


== Exemples

``````matlab
minus(3, 4)
3 - 4
``````

``````matlab
[1, 2] - 1
minus([1, 2], 1)
``````

``````matlab
ones(0, 0) - 1
``````

Soustraire des valeurs numeriques a des codes caractere.

``````matlab
char(65) - 1
int8([1 2]) - char(65)
``````


== Voir aussi

#nlink(<operators:plus>)[plus];, #nlink(<operators:uminus>)[uminus];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
