#import "nelson_help.typ": *

= audioplayer\_delete <audio:audioplayer_delete>

Supprime l'objet audioplayer.

== Syntaxe

- #raw("audioplayer_delete(h)");
- #raw("delete(h)");

== Argument d'entrée

/ h: un handle : un objet audioplayer.

== Description

#strong[delete(h)]; libère l'objet audioplayer.

 N'oubliez pas de vider h ensuite.


== Exemple

``````matlab
used = audioplayer_used()
``````


== Voir aussi

#nlink(<audio:audioplayer>)[audioplayer];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
