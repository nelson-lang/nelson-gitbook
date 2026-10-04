# nelson.mixin.CustomDisplay

Personnaliser l'affichage d'un objet.

## 📝 Syntaxe

- classdef MaClasse < nelson.mixin.CustomDisplay

## 📥 Argument d'entrée

- obj - objet d'une classe derivee de nelson.mixin.CustomDisplay.

## 📤 Argument de sortie

- txt - texte d'affichage personnalise produit par les methodes de la classe derivee.

## 📄 Description

Dérivez de <b>nelson.mixin.CustomDisplay</b> pour personnaliser l'affichage des instances d'une classe. Une sous-classe peut surcharger l'une de ces méthodes protégées et laisser la composition par défaut afficher le reste :

<b>getHeader(obj)</b> - le texte d'en-tête (un vecteur de caractères ou une string scalaire). Par défaut : le nom de la classe suivi de <b>with properties:</b>.

<b>getFooter(obj)</b> - le texte de pied (char ou string). Par défaut : vide.

<b>getPropertyGroups(obj)</b> - un tableau d'objets <b>nelson.mixin.util.PropertyGroup</b>décrivant quelles propriétés sont affichées et comment elles sont groupées. Par défaut : un seul groupe avec toutes les propriétés publiques.

<b>displayScalarObject(obj)</b>, <b>displayNonScalarObject(obj)</b> et <b>displayEmptyObject(obj)</b> - prennent le contrôle complet de l'affichage d'un objet scalaire, d'un tableau d'objets, ou d'un tableau d'objets vide respectivement.

Lorsque aucune des méthodes d'affichage n'est surchargée, l'objet est affiché comme <b>getHeader</b>, puis les groupes de propriétés, puis <b>getFooter</b>.

## 💡 Exemple

Surcharger seulement l'en-tête et le pied.

```matlab
classdef Point < nelson.mixin.CustomDisplay
  properties
    X = 0
    Y = 0
  end
  methods (Access = protected)
    function h = getHeader(obj)
      h = "A 2-D point:";
    end
    function f = getFooter(obj)
      f = '(cartesian)';
    end
  end
end
```

## 🔗 Voir aussi

[nelson.mixin.util.PropertyGroup](../types/nelson.mixin.util.PropertyGroup.md), [classdef](../interpreter/classdef.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
