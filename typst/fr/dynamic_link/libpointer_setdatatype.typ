#import "nelson_help.typ": *

= libpointer\_setdatatype <dynamic_link:libpointer_setdatatype>

Définit le type d'un handle libpointer

== Syntaxe

- #raw("h.setdatatype(datatype)");

== Argument d'entrée

/ h: a libpointer handle.
/ datatype: a string: new datatype.

== Description

Définit le type de données d'un objet libpointer.


== Exemple

``````matlab
a = libpointer();
a.isNull()
a.setdatatype('doublePtr');
a.reshape(1, 1)
a.Value
``````


== Voir aussi

#nlink(<dynamic_link:libpointer>)[libpointer];, #nlink(<dynamic_link:C_datatype>)[C\/Nelson equivalent data types];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
