# nelson.mixin.Heterogeneous

Autoriser des tableaux mélangeant des classes apparentées.

## 📝 Syntaxe

- classdef MaBase < nelson.mixin.Heterogeneous

## 📥 Argument d'entrée

- obj - objet d'une classe derivee de nelson.mixin.Heterogeneous.

## 📤 Argument de sortie

- obj - objet pouvant participer a un tableau heterogene.

## 📄 Description


Dérivez une classe de <b>nelson.mixin.Heterogeneous</b> pour autoriser des tableaux contenant un mélange d'objets de cette classe et de ses sous-classes. Un tel tableau prend la classe du plus proche ancêtre commun <b>nelson.mixin.Heterogeneous</b> de ses éléments. 

Sans ce mixin, concaténer des objets de classes différentes est une erreur. Avec lui, des classes apparentées partageant une racine hétérogène peuvent être stockées ensemble dans un même tableau.

## 💡 Exemple

Une hiérarchie de formes hétérogène.

```matlab
classdef Shape < nelson.mixin.Heterogeneous
end
% classdef Circle < Shape ... end
% classdef Square < Shape ... end
% shapes = [Circle(), Square()];   % un tableau Shape
```


## 🔗 Voir aussi

[classdef](../interpreter/classdef.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
