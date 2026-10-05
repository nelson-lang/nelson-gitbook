# ytickangle

Faire pivoter les etiquettes de l'axe des y.

## 📝 Syntaxe

- ytickangle(angle)
- angle = ytickangle()
- ytickangle(ax, ...)

## 📥 Argument d'entrée

- angle - Angle de rotation en degres, specifie sous la forme d'un scalaire numerique.
- ax - Axes cibles. Par defaut, les axes courants.

## 📤 Argument de sortie

- angle - Angle de rotation courant en degres.

## 📄 Description


<b>ytickangle</b> fait pivoter les etiquettes de l'axe des y des axes courants de l'angle indique. 

Un angle positif fait pivoter les etiquettes dans le sens anti-horaire ; un angle negatif dans le sens horaire.

## 💡 Exemple

Faire pivoter les etiquettes de l'axe des y de 45 degres.

```matlab

x = linspace(0, 10, 50);
plot(x, 1000 * sin(x));
ytickangle(45);

```


## 🔗 Voir aussi

[yticks](../../../graphics/3_labels_styling/1_axes_appearance/yticks.md), [yticklabels](../../../graphics/3_labels_styling/1_axes_appearance/yticklabels.md), [xtickangle](../../../graphics/3_labels_styling/1_axes_appearance/xtickangle.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
