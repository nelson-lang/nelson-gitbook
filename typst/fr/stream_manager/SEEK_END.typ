#import "nelson_help.typ": *

= SEEK\_END <stream_manager:SEEK_END>

Valeur d'origine pour fseek : à la fin du fichier.

== Syntaxe

- #raw("id = SEEK_END()");

== Argument de sortie

/ id: la valeur #strong[1];.

== Description

#strong[id \= SEEK\_END()]; renvoie la valeur numérique d'origine à passer à #strong[fseek]; pour positionner le fichier par rapport à la fin du fichier.


== Exemple

``````matlab
id = SEEK_END()
``````


== Voir aussi

#nlink(<stream_manager:fseek>)[fseek];, #nlink(<stream_manager:ftell>)[ftell];, #nlink(<stream_manager:SEEK_SET>)[SEEK\_SET];, #nlink(<stream_manager:SEEK_CUR>)[SEEK\_CUR];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
