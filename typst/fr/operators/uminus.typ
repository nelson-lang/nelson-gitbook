#import "nelson_help.typ": *

= uminus <operators:uminus>

Unaire moins, opérateur -

== Syntaxe

- #raw("C = uminus(A)");
- #raw("C = -A");

== Argument d'entrée

/ A: une variable

== Argument de sortie

/ C: résultat de -A

== Description

#strong[C \= uminus(A)]; effectue l'opération unaire moins, c.-à-d. -A.


== Exemple

``````matlab
M = 3;
 -M
``````


== Voir aussi

#nlink(<operators:uplus>)[uplus];, #nlink(<operators:minus>)[minus];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
