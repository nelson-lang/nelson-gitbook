#import "nelson_help.typ": *

= audioplayer\_get <audio:audioplayer_get>

Obtient la valeur de propriété de l'interface audioplayer.

== Syntaxe

- #raw("v = get(h, propertyname)");
- #raw("v = audioplayer_get(h, propertyname)");
- #raw("v = h.propertyname");

== Argument d'entrée

/ h: un objet audioplayer.
/ propertyname: une chaîne : le nom de la propriété de l'objet audioplayer.

== Argument de sortie

/ v: une variable Nelson.

== Description

La fonction retourne la valeur de la propriété spécifiée dans la chaîne, propertyname.


== Exemple

``````matlab
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16)
playObj.Running

``````


== Voir aussi

#nlink(<audio:audioplayer_set>)[audioplayer\_set];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
