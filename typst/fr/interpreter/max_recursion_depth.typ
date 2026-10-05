#import "nelson_help.typ": *

= max\_recursion\_depth <interpreter:max_recursion_depth>

Limite interne du nombre de fois qu'une fonction peut être appelée récursivement.

== Syntaxe

- #raw("current_val = max_recursion_depth()");
- #raw("previous_val = max_recursion_depth(new_val)");

== Argument d'entrée

/ new\_val: une valeur entière : nouvelle valeur

== Argument de sortie

/ current\_val: une valeur entière.
/ previous\_val: une valeur entière.

== Description

#strong[max\_recursion\_depth]; spécifie la profondeur maximale de récursion pour empêcher Nelson de récursiver indéfiniment.


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
