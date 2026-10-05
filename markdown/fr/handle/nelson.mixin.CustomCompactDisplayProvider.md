# nelson.mixin.CustomCompactDisplayProvider

Fournir un affichage compact d'un objet dans les conteneurs.

## 📝 Syntaxe

- classdef MaClasse < nelson.mixin.CustomCompactDisplayProvider

## 📥 Argument d'entrée

- obj - objet d'une classe derivee de nelson.mixin.CustomCompactDisplayProvider.
- config - configuration d'affichage utilisee pour la sortie compacte.
- width - largeur maximale d'affichage.

## 📤 Argument de sortie

- rep - representation d'affichage compact.

## 📄 Description


Dérivez de <b>nelson.mixin.CustomCompactDisplayProvider</b> pour contrôler l'affichage compact d'un objet lorsqu'il apparaît dans un conteneur tel qu'une cellule ou une structure. 

Une sous-classe implémente <b>compactRepresentationForSingleLine(obj, config, width)</b>, qui renvoie un objet <b>nelson.display.CompactDisplayRepresentation</b> décrivant l'objet sur une ligne. La représentation est habituellement construite avec la méthode héritée <b>widthConstrainedDataRepresentation(obj, config, width, 'StringArray', texte)</b>, qui assemble les données fournies avec le délimiteur défini par <b>config</b> (un <b>nelson.display.DisplayConfiguration</b>) et les tronque avec les points de suspension configurés lorsqu'elles dépassent <b>width</b> caractères. Lorsqu'une instance est affichée dans un conteneur tel qu'une cellule, un champ de structure ou une colonne de <b>table</b>, le texte obtenu est utilisé à la place du <b>[1x1 ClassName]</b> par défaut. 

Une méthode compagnon <b>compactRepresentationForColumn(obj, config, width)</b> peut être implémentée pour les dispositions en colonne, et <b>fullDataRepresentation(obj, config, ...)</b>construit une représentation sans contrainte de largeur. Lorsque ces méthodes ne sont pas surchargées, la représentation par défaut est utilisée.

## 💡 Exemple

Une température affichée de façon compacte dans une cellule.

```matlab
classdef Temp < nelson.mixin.CustomCompactDisplayProvider
  properties
    Celsius = 0
  end
  methods
    function obj = Temp(c)
      if nargin > 0
        obj.Celsius = c;
      end
    end
    function rep = compactRepresentationForSingleLine(obj, config, width)
      txt = [num2str(obj.Celsius), ' degC'];
      rep = widthConstrainedDataRepresentation(obj, config, width, 'StringArray', string(txt));
    end
  end
end
c = {Temp(20), Temp(37)}   % affiche {20 degC}  {37 degC}
```


## 🔗 Voir aussi

[nelson.mixin.CustomDisplay](../handle/nelson.mixin.CustomDisplay.md), [classdef](../interpreter/classdef.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
