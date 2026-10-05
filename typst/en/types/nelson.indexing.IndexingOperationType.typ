#import "nelson_help.typ": *

= nelson.indexing.IndexingOperationType <types:nelson.indexing.IndexingOperationType>

Kind of a single indexing operation.

== Syntax

- #raw("t = nelson.indexing.IndexingOperationType.Paren");

== Input argument

/ t: an indexing operation type enumeration value.

== Output argument

/ t: an indexing operation type enumeration value.

== Description

#strong[nelson.indexing.IndexingOperationType]; is an enumeration naming the kind of an indexing operation. Members: #strong[Paren];, #strong[Brace];, #strong[Dot];, #strong[ParenDelete];, #strong[BraceDelete];. It is the #strong[Type]; property of a #strong[nelson.indexing.IndexingOperation];.


== Example

An enumeration member.

``````matlab
t = nelson.indexing.IndexingOperationType.Brace;
char(t)
``````


== See also

#nlink(<types:nelson.indexing.IndexingOperation>)[nelson.indexing.IndexingOperation];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
