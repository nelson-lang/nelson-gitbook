#import "nelson_help.typ": *

= nelson.mixin.indexing.RedefinesBrace <types:nelson.mixin.indexing.RedefinesBrace>

Personnaliser l'indexation par accolades d'une classe.

== Syntaxe

- #raw("classdef MaClasse < nelson.mixin.indexing.RedefinesBrace");

== Argument d'entrée

/ obj: objet d'une classe derivee de nelson.mixin.indexing.RedefinesBrace.

== Argument de sortie

/ obj: objet prenant en charge une indexation par accolades personnalisee.

== Description

Dérivez de #strong[nelson.mixin.indexing.RedefinesBrace]; pour donner à une classe son propre comportement d'indexation par accolades. Une sous-classe implémente les méthodes protégées #strong[braceReference(obj, indexOp)]; (valeur de #strong[obj{...}];), #strong[braceAssign(obj, indexOp, value)]; (#strong[obj{...} \= value];) et #strong[braceListLength(obj, indexOp, indexContext)];.

 #strong[indexOp]; est un #strong[nelson.indexing.IndexingOperation]; dont la propriété #strong[Indices]; est un tableau de cellules des indices.


== Exemple

Un conteneur de type cellule.

``````matlab
classdef Bag < nelson.mixin.indexing.RedefinesBrace
  properties
    Data
  end
  methods
    function obj = Bag(x)
      obj.Data = x;
    end
  end
  methods (Access = protected)
    function varargout = braceReference(obj, indexOp)
      varargout{1} = obj.Data{indexOp.Indices{1}};
    end
    function obj = braceAssign(obj, indexOp, val)
      obj.Data{indexOp.Indices{1}} = val;
    end
    function n = braceListLength(obj, indexOp, ctx)
      n = 1;
    end
  end
end
``````


== Voir aussi

#nlink(<types:nelson.mixin.indexing.RedefinesParen>)[nelson.mixin.indexing.RedefinesParen];, #nlink(<types:nelson.indexing.IndexingOperation>)[nelson.indexing.IndexingOperation];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
