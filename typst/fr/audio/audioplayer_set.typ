#import "nelson_help.typ": *

= audioplayer\_set <audio:audioplayer_set>

Définit la propriété de l'objet ou de l'interface à la valeur spécifiée.

== Syntaxe

- #raw("set(h, propertyname, value)");
- #raw("audioplayer_set(h, propertyname, value)");
- #raw("h.propertyname = value");

== Argument d'entrée

/ h: un objet audioplayer.
/ propertyname: une chaîne : le nom de la propriété de l'objet audioplayer.
/ value: une chaîne, un booléen, un double ...

== Description

La fonction définit la propriété spécifiée dans la chaîne propertyname à la valeur donnée.


== Exemple

``````matlab
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16)
playObj.Tag = 'my audio object'
``````


== Voir aussi

#nlink(<audio:audioplayer_get>)[audioplayer\_get];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
