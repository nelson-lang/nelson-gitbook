# xtickangle

Faire pivoter les etiquettes de l'axe des x.

## 📝 Syntaxe

- xtickangle(angle)
- angle = xtickangle()
- xtickangle(ax, ...)

## 📥 Argument d'entrée

- angle - Angle de rotation en degres, specifie sous la forme d'un scalaire numerique.
- ax - Axes cibles. Par defaut, les axes courants.

## 📤 Argument de sortie

- angle - Angle de rotation courant en degres.

## 📄 Description


<b>xtickangle</b> fait pivoter les etiquettes de l'axe des x des axes courants de l'angle indique. 

Un angle positif fait pivoter les etiquettes dans le sens anti-horaire ; un angle negatif dans le sens horaire.

## 💡 Exemple

Faire pivoter les etiquettes de l'axe des x de 45 degres.

```matlab

bar([10 20 30 41]);
xticklabels({'January','February','March','April'});
xtickangle(45);

```


## 🔗 Voir aussi

[xticks](../../../graphics/3_labels_styling/1_axes_appearance/xticks.md), [xticklabels](../../../graphics/3_labels_styling/1_axes_appearance/xticklabels.md), [ytickangle](../../../graphics/3_labels_styling/1_axes_appearance/ytickangle.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
