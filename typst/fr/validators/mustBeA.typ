#import "nelson_help.typ": *

= mustBeA <validators:mustBeA>

Vérifie que la valeur d'entrée appartient à l'une des classes spécifiées.

== Syntaxe

- #raw("mustBeA(var, classNames)");
- #raw("mustBeA(var, classNames, argPosition)");
- #raw("C++: void mustBeA(const ArrayOfVector& args, const wstringVector &classNames, int argPosition)");

== Argument d'entrée

/ var: une variable.
/ classNames: une variable : nom du type de données ou de la classe.
/ argPosition: un entier positif : position de l'argument d'entrée.

== Description

#strong[mustBeA]; vérifie que la valeur d'entrée appartient à l'une des classes spécifiées.

 Une valeur est acceptée quand sa classe, l'une de ses superclasses, ou l'une des catégories #strong[numeric];, #strong[float]; et #strong[integer]; figure dans #strong[classNames]; (mêmes règles que #strong[isa];).


== Exemple

``````matlab
mustBeA(1, 'double')
mustBeA([], ["double", "single"])
``````


== Voir aussi

#nlink(<validators:mustBeNumeric>)[mustBeNumeric];, #nlink(<types:isa>)[isa];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [superclasses et catégories numeric, float, integer acceptées.],
)

// Auteur: Allan CORNET
