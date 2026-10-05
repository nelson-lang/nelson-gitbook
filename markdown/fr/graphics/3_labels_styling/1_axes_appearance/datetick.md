# datetick

Etiquettes de graduation au format date.

## 📝 Syntaxe

- datetick()
- datetick(tickaxis)
- datetick(tickaxis, dateFormat)
- datetick(..., 'keeplimits')
- datetick(..., 'keepticks')
- datetick(ax, ...)

## 📥 Argument d'entrée

- tickaxis - Axe a etiqueter : 'x' (defaut), 'y' ou 'z'.
- dateFormat - Format de date, donne sous la forme d'une chaine de format <b>datestr</b> (par exemple 'yyyy') ou d'un numero de format.
- 'keeplimits' - Conserve les limites courantes de l'axe.
- 'keepticks' - Conserve les positions courantes des graduations.
- ax - Axes cibles. Par defaut, les axes courants.

## 📄 Description


<b>datetick</b> etiquette les graduations d'un axe avec des dates, en traitant les valeurs des graduations comme des numeros de date serie (voir <b>datenum</b>). 

Si aucun format n'est donne, un format est choisi selon l'etendue couverte par les graduations. Utilisez <b>keepticks</b> pour conserver les positions des graduations et <b>keeplimits</b> pour conserver les limites.

## 💡 Exemple

Etiqueter l'axe des x avec des annees.

```matlab

t = datenum(2000, 1, 1):365:datenum(2010, 1, 1);
plot(t, rand(1, numel(t)));
datetick('x', 'yyyy');

```


## 🔗 Voir aussi

[xticks](../../../graphics/3_labels_styling/1_axes_appearance/xticks.md), [xticklabels](../../../graphics/3_labels_styling/1_axes_appearance/xticklabels.md), [xtickformat](../../../graphics/3_labels_styling/1_axes_appearance/xtickformat.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
