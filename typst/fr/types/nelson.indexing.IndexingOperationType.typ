#import "nelson_help.typ": *

= nelson.indexing.IndexingOperationType <types:nelson.indexing.IndexingOperationType>

Type d'une opération d'indexation.

== Syntaxe

- #raw("t = nelson.indexing.IndexingOperationType.Paren");

== Argument d'entrée

/ t: valeur d'enumeration de type d'operation d'indexation.

== Argument de sortie

/ t: valeur d'enumeration de type d'operation d'indexation.

== Description

#strong[nelson.indexing.IndexingOperationType]; est une énumération nommant le type d'une opération d'indexation. Membres : #strong[Paren];, #strong[Brace];, #strong[Dot];, #strong[ParenDelete];, #strong[BraceDelete];. C'est la propriété #strong[Type]; d'un #strong[nelson.indexing.IndexingOperation];.


== Exemple

Un membre d'énumération.

``````matlab
t = nelson.indexing.IndexingOperationType.Brace;
char(t)
``````


== Voir aussi

#nlink(<types:nelson.indexing.IndexingOperation>)[nelson.indexing.IndexingOperation];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
