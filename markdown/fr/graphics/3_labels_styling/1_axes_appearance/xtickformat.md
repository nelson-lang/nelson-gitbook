# xtickformat

Definir ou obtenir le format des etiquettes de l'axe des x.

## 📝 Syntaxe

- xtickformat(fmt)
- fmt = xtickformat()
- xtickformat(ax, ...)

## 📥 Argument d'entrée

- fmt - Specificateur de format : une conversion de type sprintf ou un mot-cle predefini.
- ax - Axes cibles. Par defaut, les axes courants.

## 📤 Argument de sortie

- fmt - Format courant des etiquettes.

## 📄 Description


<b>xtickformat</b> definit ou obtient le format des etiquettes de l'axe des x des axes courants. 

Le format s'applique aux etiquettes generees automatiquement. 

Le format est une conversion de type sprintf (par exemple <b>%.2f</b> ou <b>%g</b>) appliquee a chaque valeur numerique de graduation. Les mots-cles predefinis <b>usd</b>, <b>eur</b>, <b>gbp</b>, <b>jpy</b>, <b>degrees</b> et <b>percentage</b> sont egalement acceptes. Les etiquettes personnalisees definies avec xticklabels ont priorite sur le format.

## 💡 Exemple

Formater les etiquettes de l'axe des x.

```matlab

plot(1:10, (1:10) / 4);
xtickformat('%.2f');

```


## 🔗 Voir aussi

[xticks](../../../graphics/3_labels_styling/1_axes_appearance/xticks.md), [xticklabels](../../../graphics/3_labels_styling/1_axes_appearance/xticklabels.md), [ytickformat](../../../graphics/3_labels_styling/1_axes_appearance/ytickformat.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
