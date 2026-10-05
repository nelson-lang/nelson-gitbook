# nelson.mixin.indexing.RedefinesDot

Personnaliser l'indexation par point d'une classe.

## 📝 Syntaxe

- classdef MaClasse < nelson.mixin.indexing.RedefinesDot

## 📥 Argument d'entrée

- obj - objet d'une classe derivee de nelson.mixin.indexing.RedefinesDot.

## 📤 Argument de sortie

- obj - objet prenant en charge une indexation par point personnalisee.

## 📄 Description


Dérivez de <b>nelson.mixin.indexing.RedefinesDot</b> pour donner à une classe son propre comportement d'indexation par point pour les noms qui ne sont pas des propriétés ou méthodes déclarées. Une sous-classe implémente les méthodes protégées <b>dotReference(obj, indexOp)</b>(valeur de <b>obj.name</b>), <b>dotAssign(obj, indexOp, value)</b> (<b>obj.name = value</b>) et <b>dotListLength(obj, indexOp, indexContext)</b>. 

<b>indexOp</b> est un <b>nelson.indexing.IndexingOperation</b> dont la propriété <b>Name</b>contient le nom accédé. Les propriétés et méthodes déclarées gardent leur comportement normal ; seuls les noms inconnus appellent <b>dotReference</b>/<b>dotAssign</b>.

## 💡 Exemple

Un sac nom/valeur dynamique.

```matlab
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
```


## 🔗 Voir aussi

[nelson.mixin.indexing.RedefinesParen](../types/nelson.mixin.indexing.RedefinesParen.md), [nelson.indexing.IndexingOperation](../types/nelson.indexing.IndexingOperation.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
