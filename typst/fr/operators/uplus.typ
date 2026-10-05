#import "nelson_help.typ": *

= uplus <operators:uplus>

Unaire plus, opérateur +

== Syntaxe

- #raw("C = uplus(A)");
- #raw("C = +A");

== Argument d'entrée

/ A: une variable

== Argument de sortie

/ C: résultat de +A

== Description

#strong[C \= uplus(A)]; effectue l'opération unaire plus, c.-à-d. +A.


== Exemple

``````matlab
M = -3;
+M
``````


== Voir aussi

#nlink(<operators:uminus>)[uminus];, #nlink(<operators:plus>)[plus];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
