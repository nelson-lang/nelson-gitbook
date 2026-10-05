#import "nelson_help.typ": *

= isenum <types:isenum>

Détermine si l'entrée est une énumération

== Syntaxe

- #raw("tf = isenum(X)");

== Argument d'entrée

/ X: valeur d'entrée.

== Argument de sortie

/ tf: scalaire logique, vrai si X est une énumération.

== Description

#strong[isenum]; retourne vrai si X est une instance d'une classe d'énumération, et faux sinon.


== Exemple

``````matlab
tf = isenum(3)
``````


== Voir aussi

#nlink(<types:isa>)[isa];, #nlink(<handle:metaclass>)[metaclass];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
