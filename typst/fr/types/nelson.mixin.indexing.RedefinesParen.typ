#import "nelson_help.typ": *

= nelson.mixin.indexing.RedefinesParen <types:nelson.mixin.indexing.RedefinesParen>

Personnaliser l'indexation par parenthèses d'une classe.

== Syntaxe

- #raw("classdef MaClasse < nelson.mixin.indexing.RedefinesParen");

== Argument d'entrée

/ obj: objet d'une classe derivee de nelson.mixin.indexing.RedefinesParen.

== Argument de sortie

/ obj: objet prenant en charge une indexation par parentheses personnalisee.

== Description

Dérivez de #strong[nelson.mixin.indexing.RedefinesParen]; pour donner à une classe son propre comportement d'indexation par parenthèses, par exemple pour un conteneur qui indexe ses données stockées plutôt qu'un tableau d'objets.

 Une sous-classe implémente ces méthodes protégées :

 #strong[parenReference(obj, indexOp)]; - valeur de #strong[obj(...)];.

 #strong[parenAssign(obj, indexOp, value)]; - résultat de #strong[obj(...) \= value];.

 #strong[parenDelete(obj, indexOp)]; - résultat de #strong[obj(...) \= \[\]];.

 #strong[parenListLength(obj, indexOp, indexContext)]; - nombre de valeurs produites.

 et ces méthodes publiques : #strong[size(obj)];, #strong[cat(dim, ...)]; et la méthode statique #strong[empty(...)];.

 L'argument #strong[indexOp]; est un tableau de #strong[nelson.indexing.IndexingOperation];. Pour une expression chaînée comme #strong[obj(i).field];, le hook est appelé une seule fois avec la chaîne entière : #strong[numel(indexOp)]; vaut le nombre d'opérations (2 ici), #strong[indexOp(1)]; est l'opération parenthèses et #strong[indexOp(2)]; l'opération #strong[.field];. Appliquez la chaîne entière aux données stockées avec la forme dynamique #strong[obj.Data.(indexOp)];, ou lisez un niveau via #strong[indexOp(k).Indices{...}]; \/ #strong[indexOp(k).Name];. La classe de base fournit #strong[numel];, #strong[length];, #strong[isempty];, #strong[ndims];, #strong[end];, #strong[horzcat]; et #strong[vertcat]; à partir des méthodes abstraites #strong[size];\/#strong[cat];.

 Une indexation à un seul niveau (#strong[obj(i)];) appelle le hook avec un #strong[indexOp]; scalaire (#strong[numel(indexOp) \=\= 1];). Quelques formes de chaîne restent évaluées étape par étape (le hook voit une seule opération, la valeur est identique) : un niveau #strong[.method(args)];, une chaîne utilisant #strong[end]; après le premier niveau, et l'affectation chaînée.


== Exemple

Un conteneur qui redéfinit l'indexation par parenthèses.

``````matlab
classdef Bag < nelson.mixin.indexing.RedefinesParen
  properties
    Data
  end
  methods
    function obj = Bag(x)
      obj.Data = x;
    end
    function varargout = size(obj, varargin)
      varargout{1} = size(obj.Data, varargin{:});
    end
    function obj = cat(dim, varargin)
      acc = [];
      for k = 1:numel(varargin)
        acc = cat(dim, acc, varargin{k}.Data);
      end
      obj = Bag(acc);
    end
  end
  methods (Access = protected)
    function varargout = parenReference(obj, indexOp)
      % indexOp peut contenir toute la chaîne ; l'appliquer aux données stockées.
      [varargout{1:nargout}] = obj.Data.(indexOp);
    end
    function obj = parenAssign(obj, indexOp, varargin)
      obj.Data.(indexOp) = varargin{1};
    end
    function obj = parenDelete(obj, indexOp)
      obj.Data.(indexOp) = [];
    end
    function n = parenListLength(obj, indexOp, ctx)
      n = 1;
    end
  end
end
``````


== Voir aussi

#nlink(<types:nelson.mixin.indexing.RedefinesBrace>)[nelson.mixin.indexing.RedefinesBrace];, #nlink(<types:nelson.mixin.indexing.RedefinesDot>)[nelson.mixin.indexing.RedefinesDot];, #nlink(<types:nelson.indexing.IndexingOperation>)[nelson.indexing.IndexingOperation];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
