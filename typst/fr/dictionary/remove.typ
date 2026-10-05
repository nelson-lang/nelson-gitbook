#import "nelson_help.typ": *

= remove <dictionary:remove>

Supprimer des entrées du dictionnaire.

== Syntaxe

- #raw("db = remove(da, key)");

== Argument d'entrée

/ da: scalaire : un objet dictionnaire.
/ key: scalaire ou tableau : clé

== Argument de sortie

/ db: scalaire : un objet dictionnaire.

== Description

#strong[db \= remove(da, key)]; supprime l'entrée associée à la clé du dictionnaire da.

 #strong[d \= remove(d, key)]; équivaut à #strong[d\[key\] \= \[\]];.


== Exemple

``````matlab
names = ["Apple" "Banana" "Kiwi"];
wheels = [1 2 3];
d = dictionary(wheels, names)
d = remove(d, 2)

``````


== Voir aussi

#nlink(<dictionary:dictionary>)[dictionary];, #nlink(<dictionary:insert>)[insert];, #nlink(<dictionary:lookup>)[lookup];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.5.0], [version initiale],
)

// Auteur: Allan CORNET
