#import "nelson_help.typ": *

= SEEK\_CUR <stream_manager:SEEK_CUR>

Valeur d'origine pour fseek : à la position courante.

== Syntaxe

- #raw("id = SEEK_CUR()");

== Argument de sortie

/ id: la valeur #strong[0];.

== Description

#strong[id \= SEEK\_CUR()]; renvoie la valeur numérique d'origine à passer à #strong[fseek]; pour positionner le fichier par rapport à la position courante.


== Exemple

``````matlab
id = SEEK_CUR()
``````


== Voir aussi

#nlink(<stream_manager:fseek>)[fseek];, #nlink(<stream_manager:ftell>)[ftell];, #nlink(<stream_manager:SEEK_SET>)[SEEK\_SET];, #nlink(<stream_manager:SEEK_END>)[SEEK\_END];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
