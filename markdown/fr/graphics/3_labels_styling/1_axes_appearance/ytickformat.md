# ytickformat

Definir ou obtenir le format des etiquettes de l'axe des y.

## 📝 Syntaxe

- ytickformat(fmt)
- fmt = ytickformat()
- ytickformat(ax, ...)

## 📥 Argument d'entrée

- fmt - Specificateur de format : une conversion de type sprintf ou un mot-cle predefini.
- ax - Axes cibles. Par defaut, les axes courants.

## 📤 Argument de sortie

- fmt - Format courant des etiquettes.

## 📄 Description

<b>ytickformat</b> definit ou obtient le format des etiquettes de l'axe des y des axes courants.

Le format s'applique aux etiquettes generees automatiquement.

Le format est une conversion de type sprintf (par exemple <b>%.2f</b> ou <b>%g</b>) appliquee a chaque valeur numerique de graduation. Les mots-cles predefinis <b>usd</b>, <b>eur</b>, <b>gbp</b>, <b>jpy</b>, <b>degrees</b> et <b>percentage</b> sont egalement acceptes. Les etiquettes personnalisees definies avec yticklabels ont priorite sur le format.

## 💡 Exemple

Formater les etiquettes de l'axe des y.

```matlab

plot(1:10, (1:10) * 100);
ytickformat('usd');

```

## 🔗 Voir aussi

[yticks](../../../graphics/3_labels_styling/1_axes_appearance/yticks.md), [yticklabels](../../../graphics/3_labels_styling/1_axes_appearance/yticklabels.md), [xtickformat](../../../graphics/3_labels_styling/1_axes_appearance/xtickformat.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
