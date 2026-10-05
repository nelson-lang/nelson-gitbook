#import "nelson_help.typ": *

= subsindex <operators:subsindex>

Convertir un objet en vecteur d'indices.

== Syntaxe

- #raw("r = subsindex(O)");

== Argument d'entrée

/ O: une variable

== Description

Si #strong[O]; est un objet alors #strong[subsindex]; est la méthode de surcharge qui permet de convertir cet objet en un vecteur d'indexation valide.


== Voir aussi

#nlink(<operators:subsref>)[subsref];, #nlink(<operators:subsasgn>)[subsasgn];, #nlink(<operators:colon>)[colon];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
