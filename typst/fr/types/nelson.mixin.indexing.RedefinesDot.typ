#import "nelson_help.typ": *

= nelson.mixin.indexing.RedefinesDot <types:nelson.mixin.indexing.RedefinesDot>

Personnaliser l'indexation par point d'une classe.

== Syntaxe

- #raw("classdef MaClasse < nelson.mixin.indexing.RedefinesDot");

== Argument d'entrée

/ obj: objet d'une classe derivee de nelson.mixin.indexing.RedefinesDot.

== Argument de sortie

/ obj: objet prenant en charge une indexation par point personnalisee.

== Description

Dérivez de #strong[nelson.mixin.indexing.RedefinesDot]; pour donner à une classe son propre comportement d'indexation par point pour les noms qui ne sont pas des propriétés ou méthodes déclarées. Une sous-classe implémente les méthodes protégées #strong[dotReference(obj, indexOp)]; (valeur de #strong[obj.name];), #strong[dotAssign(obj, indexOp, value)]; (#strong[obj.name \= value];) et #strong[dotListLength(obj, indexOp, indexContext)];.

 #strong[indexOp]; est un #strong[nelson.indexing.IndexingOperation]; dont la propriété #strong[Name]; contient le nom accédé. Les propriétés et méthodes déclarées gardent leur comportement normal ; seuls les noms inconnus appellent #strong[dotReference];\/#strong[dotAssign];.


== Exemple

Un sac nom\/valeur dynamique.

``````matlab
classdef Bag < nelson.mixin.indexing.RedefinesDot
  properties (Access = private)
    Store
  end
  methods
    function obj = Bag()
      obj.Store = struct();
    end
  end
  methods (Access = protected)
    function varargout = dotReference(obj, indexOp)
      varargout{1} = obj.Store.(indexOp.Name);
    end
    function obj = dotAssign(obj, indexOp, val)
      obj.Store.(indexOp.Name) = val;
    end
    function n = dotListLength(obj, indexOp, ctx)
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
