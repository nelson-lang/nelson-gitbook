#import "nelson_help.typ": *

= SEEK\_SET <stream_manager:SEEK_SET>

Valeur d'origine pour fseek : au début du fichier.

== Syntaxe

- #raw("id = SEEK_SET()");

== Argument de sortie

/ id: la valeur #strong[-1];.

== Description

#strong[id \= SEEK\_SET()]; renvoie la valeur numérique d'origine à passer à #strong[fseek]; pour positionner le fichier par rapport au début du fichier.


== Exemple

``````matlab
id = SEEK_SET()
``````


== Voir aussi

#nlink(<stream_manager:fseek>)[fseek];, #nlink(<stream_manager:ftell>)[ftell];, #nlink(<stream_manager:SEEK_CUR>)[SEEK\_CUR];, #nlink(<stream_manager:SEEK_END>)[SEEK\_END];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
