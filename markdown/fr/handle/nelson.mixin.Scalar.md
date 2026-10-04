# nelson.mixin.Scalar

Restreindre une classe à des instances scalaires.

## 📝 Syntaxe

- classdef MaClasse < nelson.mixin.Scalar

## 📥 Argument d'entrée

- obj - objet d'une classe derivee de nelson.mixin.Scalar.

## 📤 Argument de sortie

- obj - instance d'objet scalaire.

## 📄 Description

Dérivez de <b>nelson.mixin.Scalar</b> pour déclarer qu'une classe ne peut avoir que des instances scalaires. Concaténer des instances de la classe en un tableau non scalaire, avec <b>[a b]</b> ou <b>[a; b]</b>, lève une erreur d'identifiant <b>Nelson:class:concatenationScalar</b>.

Utilisez ce mixin pour des objets représentant une entité unique et pour lesquels un tableau d'objets n'a pas de sens.

## 💡 Exemple

Une classe scalaire uniquement.

```matlab
classdef Config < nelson.mixin.Scalar
  properties
    Name = ''
  end
end
% a = [Config(), Config()]   % erreur : les objets ne peuvent être que scalaires
```

## 🔗 Voir aussi

[classdef](../interpreter/classdef.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
