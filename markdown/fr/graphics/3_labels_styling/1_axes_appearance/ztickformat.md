# ztickformat

Definir ou obtenir le format des etiquettes de l'axe des z.

## 📝 Syntaxe

- ztickformat(fmt)
- fmt = ztickformat()
- ztickformat(ax, ...)

## 📥 Argument d'entrée

- fmt - Specificateur de format : une conversion de type sprintf ou un mot-cle predefini.
- ax - Axes cibles. Par defaut, les axes courants.

## 📤 Argument de sortie

- fmt - Format courant des etiquettes.

## 📄 Description

<b>ztickformat</b> definit ou obtient le format des etiquettes de l'axe des z des axes courants.

Le format s'applique aux etiquettes generees automatiquement.

Le format est une conversion de type sprintf (par exemple <b>%.2f</b> ou <b>%g</b>) appliquee a chaque valeur numerique de graduation. Les mots-cles predefinis <b>usd</b>, <b>eur</b>, <b>gbp</b>, <b>jpy</b>, <b>degrees</b> et <b>percentage</b> sont egalement acceptes. Les etiquettes personnalisees definies avec zticklabels ont priorite sur le format.

## 💡 Exemple

Formater les etiquettes de l'axe des z.

```matlab

t = linspace(0, 10, 50);
plot3(sin(t), cos(t), t / 4);
ztickformat('%.1f');

```

## 🔗 Voir aussi

[zticks](../../../graphics/3_labels_styling/1_axes_appearance/zticks.md), [zticklabels](../../../graphics/3_labels_styling/1_axes_appearance/zticklabels.md), [xtickformat](../../../graphics/3_labels_styling/1_axes_appearance/xtickformat.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
