#import "nelson_help.typ": *

= mustBeNonmissing <validators:mustBeNonmissing>

Vérifie que la valeur n'est pas manquante ou renvoie une erreur.

== Syntaxe

- #raw("mustBeNonmissing(var)");
- #raw("mustBeNonmissing(var, argPosition)");
- #raw("C++: void mustBeNonmissing(const ArrayOfVector& args, int argPosition)");

== Argument d'entrée

/ var: une variable : tous les types et classes pris en charge qui implémentent la méthode ismissing.
/ argPosition: un entier positif : position de l'argument d'entrée.

== Description

#strong[mustBeNonmissing(var)]; vérifie que la valeur de #emph[var]; n'est pas manquante


== Exemple

``````matlab
mustBeNonmissing(1)
mustBeNonmissing([])
mustBeNonmissing(["hello" string(NaN)])

``````


== Voir aussi

#nlink(<data_analysis:ismissing>)[ismissing];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
