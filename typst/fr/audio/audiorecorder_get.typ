#import "nelson_help.typ": *

= audiorecorder\_get <audio:audiorecorder_get>

Obtenir la valeur d'une propriété depuis l'interface audiorecorder.

== Syntaxe

- #raw("v = get(h, propertyname)");
- #raw("v = audiorecorder_get(h, propertyname)");
- #raw("v = h.propertyname");

== Argument d'entrée

/ h: un objet audiorecorder.
/ propertyname: une chaîne de caractères : le nom de la propriété de l'objet audiorecorder.

== Argument de sortie

/ v: une variable nelson.

== Description

La fonction retourne la valeur de la propriété spécifiée dans la chaîne propertyname.


== Exemple

``````matlab
recObj = audiorecorder()
recObj.Running

``````


== Voir aussi

#nlink(<audio:audiorecorder_set>)[audiorecorder\_set];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [version initiale],
)

// Auteur: Allan CORNET
