#import "nelson_help.typ": *

= nelson.mixin.Scalar <handle:nelson.mixin.Scalar>

Restreindre une classe à des instances scalaires.

== Syntaxe

- #raw("classdef MaClasse < nelson.mixin.Scalar");

== Argument d'entrée

/ obj: objet d'une classe derivee de nelson.mixin.Scalar.

== Argument de sortie

/ obj: instance d'objet scalaire.

== Description

Dérivez de #strong[nelson.mixin.Scalar]; pour déclarer qu'une classe ne peut avoir que des instances scalaires. Concaténer des instances de la classe en un tableau non scalaire, avec #strong[\[a b\]]; ou #strong[\[a; b\]];, lève une erreur d'identifiant #strong[Nelson:class:concatenationScalar];.

 Utilisez ce mixin pour des objets représentant une entité unique et pour lesquels un tableau d'objets n'a pas de sens.


== Exemple

Une classe scalaire uniquement.

``````matlab
classdef Config < nelson.mixin.Scalar
  properties
    Name = ''
  end
end
% a = [Config(), Config()]   % erreur : les objets ne peuvent être que scalaires
``````


== Voir aussi

#nlink(<interpreter:classdef>)[classdef];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
