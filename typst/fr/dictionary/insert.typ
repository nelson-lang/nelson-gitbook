#import "nelson_help.typ": *

= insert <dictionary:insert>

Ajouter des entrées à un dictionnaire.

== Syntaxe

- #raw("db = insert(da, key, value)");
- #raw("db = insert(da, key, value, 'Overwrite', tf)");

== Argument d'entrée

/ da: scalaire : un objet dictionnaire.
/ key: scalaire ou tableau : clé
/ value: scalaire ou tableau : valeur. la taille de key doit être compatible avec la taille de value.
/ tf: true force l'écrasement, false n'écrase pas et ignore le changement

== Argument de sortie

/ db: scalaire : un objet dictionnaire.

== Description

#strong[db \= insert(da, key, value)]; ajoute la paire clé-valeur au dictionnaire #strong[da];.

 Si la clé existe déjà, sa valeur est mise à jour.

 #strong[d \= insert(d, key, value)]; équivaut à#strong[d\[key\] \= value];.

 #strong[db \= insert(da, key, value, 'overwrite', tf)]; spécifie si l'on doit écraser une valeur existante pour la clé en fonction du paramètre booléen Overwrite.


== Exemple

``````matlab
names = ["Apple" "Banana" "Kiwi"];
wheels = [1 2 3];
d = dictionary(wheels, names)
d = insert(d, [2 4] ,["Orange" "Citra"], 'Overwrite', false)
``````


== Voir aussi

#nlink(<dictionary:dictionary>)[dictionary];, #nlink(<dictionary:remove>)[remove];, #nlink(<dictionary:lookup>)[lookup];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.5.0], [version initiale],
)

// Auteur: Allan CORNET
