# zticklabels

Definir ou obtenir les etiquettes de l'axe des z.

## 📝 Syntaxe

- labels = zticklabels()
- zticklabels(labels)
- zticklabels('auto')
- zticklabels('manual')
- m = zticklabels('mode')
- zticklabels(ax, ...)

## 📥 Argument d'entrée

- labels - Tableau de cellules de chaines ou tableau de chaines des etiquettes de l'axe des z.
- 'auto' - Active les etiquettes automatiques de l'axe des z.
- 'manual' - Fige les etiquettes courantes de l'axe des z.
- 'mode' - Retourne le mode des etiquettes de l'axe des z.
- ax - Axes cibles. Par defaut, les axes courants.

## 📤 Argument de sortie

- labels - Tableau de cellules de chaines des etiquettes de l'axe des z.
- m - 'auto' ou 'manual'.

## 📄 Description


<b>zticklabels</b> obtient ou definit les etiquettes de l'axe des z des axes courants. 

Specifier des etiquettes bascule le mode des etiquettes de l'axe des z sur <b>manual</b>.

## 💡 Exemple

Definir les etiquettes de l'axe des z.

```matlab

t = linspace(0, 10, 50);
plot3(sin(t), cos(t), t);
zticks([0 5 10]);
zticklabels({'low','mid','high'});
labels = zticklabels()

```


## 🔗 Voir aussi

[zticks](../../../graphics/3_labels_styling/1_axes_appearance/zticks.md), [ztickangle](../../../graphics/3_labels_styling/1_axes_appearance/ztickangle.md), [yticklabels](../../../graphics/3_labels_styling/1_axes_appearance/yticklabels.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
