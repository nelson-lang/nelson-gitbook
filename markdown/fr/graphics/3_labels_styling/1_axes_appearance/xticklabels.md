# xticklabels

Definir ou obtenir les etiquettes de l'axe des x.

## 📝 Syntaxe

- labels = xticklabels()
- xticklabels(labels)
- xticklabels('auto')
- xticklabels('manual')
- m = xticklabels('mode')
- xticklabels(ax, ...)

## 📥 Argument d'entrée

- labels - Tableau de cellules de chaines ou tableau de chaines des etiquettes de l'axe des x.
- 'auto' - Active les etiquettes automatiques de l'axe des x.
- 'manual' - Fige les etiquettes courantes de l'axe des x.
- 'mode' - Retourne le mode des etiquettes de l'axe des x.
- ax - Axes cibles. Par defaut, les axes courants.

## 📤 Argument de sortie

- labels - Tableau de cellules de chaines des etiquettes de l'axe des x.
- m - 'auto' ou 'manual'.

## 📄 Description


<b>xticklabels</b> obtient ou definit les etiquettes de l'axe des x des axes courants. 

Specifier des etiquettes bascule le mode des etiquettes de l'axe des x sur <b>manual</b>.

## 💡 Exemple

Definir les etiquettes de l'axe des x.

```matlab

bar([10 20 30 41]);
xticks(1:4);
xticklabels({'A','B','C','D'});
labels = xticklabels()

```


## 🔗 Voir aussi

[xticks](../../../graphics/3_labels_styling/1_axes_appearance/xticks.md), [xtickangle](../../../graphics/3_labels_styling/1_axes_appearance/xtickangle.md), [yticklabels](../../../graphics/3_labels_styling/1_axes_appearance/yticklabels.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
