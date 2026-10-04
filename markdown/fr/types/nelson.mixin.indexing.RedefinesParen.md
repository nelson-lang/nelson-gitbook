# nelson.mixin.indexing.RedefinesParen

Personnaliser l'indexation par parenthèses d'une classe.

## 📝 Syntaxe

- classdef MaClasse < nelson.mixin.indexing.RedefinesParen

## 📥 Argument d'entrée

- obj - objet d'une classe derivee de nelson.mixin.indexing.RedefinesParen.

## 📤 Argument de sortie

- obj - objet prenant en charge une indexation par parentheses personnalisee.

## 📄 Description

Dérivez de <b>nelson.mixin.indexing.RedefinesParen</b> pour donner à une classe son propre comportement d'indexation par parenthèses, par exemple pour un conteneur qui indexe ses données stockées plutôt qu'un tableau d'objets.

Une sous-classe implémente ces méthodes protégées :

<b>parenReference(obj, indexOp)</b> - valeur de <b>obj(...)</b>.

<b>parenAssign(obj, indexOp, value)</b> - résultat de <b>obj(...) = value</b>.

<b>parenDelete(obj, indexOp)</b> - résultat de <b>obj(...) = []</b>.

<b>parenListLength(obj, indexOp, indexContext)</b> - nombre de valeurs produites.

et ces méthodes publiques : <b>size(obj)</b>, <b>cat(dim, ...)</b> et la méthode statique <b>empty(...)</b>.

L'argument <b>indexOp</b> est un tableau de <b>nelson.indexing.IndexingOperation</b>. Pour une expression chaînée comme <b>obj(i).field</b>, le hook est appelé une seule fois avec la chaîne entière : <b>numel(indexOp)</b> vaut le nombre d'opérations (2 ici), <b>indexOp(1)</b> est l'opération parenthèses et <b>indexOp(2)</b> l'opération <b>.field</b>. Appliquez la chaîne entière aux données stockées avec la forme dynamique <b>obj.Data.(indexOp)</b>, ou lisez un niveau via <b>indexOp(k).Indices{...}</b> / <b>indexOp(k).Name</b>. La classe de base fournit <b>numel</b>, <b>length</b>, <b>isempty</b>, <b>ndims</b>, <b>end</b>, <b>horzcat</b> et <b>vertcat</b> à partir des méthodes abstraites <b>size</b>/<b>cat</b>.

Une indexation à un seul niveau (<b>obj(i)</b>) appelle le hook avec un <b>indexOp</b> scalaire (<b>numel(indexOp) == 1</b>). Quelques formes de chaîne restent évaluées étape par étape (le hook voit une seule opération, la valeur est identique) : un niveau <b>.method(args)</b>, une chaîne utilisant <b>end</b> après le premier niveau, et l'affectation chaînée.

## 💡 Exemple

Un conteneur qui redéfinit l'indexation par parenthèses.

```matlab
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
```

## 🔗 Voir aussi

[nelson.mixin.indexing.RedefinesBrace](../types/nelson.mixin.indexing.RedefinesBrace.md), [nelson.mixin.indexing.RedefinesDot](../types/nelson.mixin.indexing.RedefinesDot.md), [nelson.indexing.IndexingOperation](../types/nelson.indexing.IndexingOperation.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
