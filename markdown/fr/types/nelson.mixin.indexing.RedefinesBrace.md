# nelson.mixin.indexing.RedefinesBrace

Personnaliser l'indexation par accolades d'une classe.

## 📝 Syntaxe

- classdef MaClasse < nelson.mixin.indexing.RedefinesBrace

## 📥 Argument d'entrée

- obj - objet d'une classe derivee de nelson.mixin.indexing.RedefinesBrace.

## 📤 Argument de sortie

- obj - objet prenant en charge une indexation par accolades personnalisee.

## 📄 Description

Dérivez de <b>nelson.mixin.indexing.RedefinesBrace</b> pour donner à une classe son propre comportement d'indexation par accolades. Une sous-classe implémente les méthodes protégées <b>braceReference(obj, indexOp)</b> (valeur de <b>obj{...}</b>), <b>braceAssign(obj, indexOp, value)</b> (<b>obj{...} = value</b>) et <b>braceListLength(obj, indexOp, indexContext)</b>.

<b>indexOp</b> est un <b>nelson.indexing.IndexingOperation</b> dont la propriété <b>Indices</b> est un tableau de cellules des indices.

## 💡 Exemple

Un conteneur de type cellule.

```matlab
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
```

## 🔗 Voir aussi

[nelson.mixin.indexing.RedefinesParen](../types/nelson.mixin.indexing.RedefinesParen.md), [nelson.indexing.IndexingOperation](../types/nelson.indexing.IndexingOperation.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
