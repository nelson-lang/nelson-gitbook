#import "nelson_help.typ": *

= libpointer\_plus <dynamic_link:libpointer_plus>

Opérateur + sur un handle libpointer

== Syntaxe

- #raw("h2 = h.plus(offset)");
- #raw("h2 = h + offset");

== Argument d'entrée

/ h: a libpointer handle.
/ offset: a integer value: increment.

== Description

Opérateur plus sur un handle libpointer.

 Le libpointer de sortie n'est valide que tant que le libpointer d'origine existe.


== Exemple

``````matlab
x = [1 2 3 4 5];
xPtr = libpointer('doublePtr', x);
y = xPtr + 2;
y.reshape(1, 3);
y.Value
``````


== Voir aussi

#nlink(<dynamic_link:libpointer>)[libpointer];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
