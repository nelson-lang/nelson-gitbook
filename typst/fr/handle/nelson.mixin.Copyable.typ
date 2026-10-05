#import "nelson_help.typ": *

= nelson.mixin.Copyable <handle:nelson.mixin.Copyable>

Ajouter une méthode copy à une classe handle.

== Syntaxe

- #raw("classdef MaClasse < nelson.mixin.Copyable");
- #raw("b = copy(a)");

== Argument d'entrée

/ a: un objet handle d'une classe dérivant de nelson.mixin.Copyable.

== Argument de sortie

/ b: une copie superficielle indépendante de a.

== Description

Dérivez une classe handle de #strong[nelson.mixin.Copyable]; pour lui donner une méthode #strong[copy]; qui renvoie une copie superficielle indépendante d'un objet.

 #strong[copy(a)]; crée un nouvel objet et copie chaque valeur de propriété de #strong[a];. Les propriétés déclarées #strong[NonCopyable]; ne sont pas copiées et gardent leur valeur par défaut dans la copie. La copie est superficielle : les propriétés à valeur handle sont partagées entre l'original et la copie.

 #strong[nelson.mixin.Copyable]; est elle-même une classe handle.


== Exemple

Une classe handle copiable.

``````matlab
classdef Node < nelson.mixin.Copyable
  properties
    Value = 0
  end
end
a = Node();
a.Value = 42;
b = copy(a);
b.Value = 7;
a.Value   % toujours 42
``````


== Voir aussi

#nlink(<handle:handle>)[handle];, #nlink(<interpreter:classdef>)[classdef];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
