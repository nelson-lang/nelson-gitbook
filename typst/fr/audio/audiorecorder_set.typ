#import "nelson_help.typ": *

= audiorecorder\_set <audio:audiorecorder_set>

Définit la propriété d'un objet ou d'une interface à la valeur spécifiée.

== Syntaxe

- #raw("set(h, propertyname, value)");
- #raw("audiorecorder_set(h, propertyname, value)");
- #raw("h.propertyname = value");

== Argument d'entrée

/ h: un objet audiorecorder.
/ propertyname: une chaîne de caractères : le nom de la propriété de l'objet audiorecorder.
/ value: une chaîne de caractères, un booléen, un double ...

== Description

La fonction définit la propriété spécifiée dans la chaîne propertyname à la valeur donnée.


== Exemple

``````matlab
recObj = audiorecorder()
recObj.Tag = 'my audio object'
``````


== Voir aussi

#nlink(<audio:audiorecorder_get>)[audiorecorder\_get];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [version initiale],
)

// Auteur: Allan CORNET
