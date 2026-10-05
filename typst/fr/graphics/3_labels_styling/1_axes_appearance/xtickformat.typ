#import "../../nelson_help.typ": *

= xtickformat <graphics:3_labels_styling.1_axes_appearance.xtickformat>

Definir ou obtenir le format des etiquettes de l'axe des x.

== Syntaxe

- #raw("xtickformat(fmt)");
- #raw("fmt = xtickformat()");
- #raw("xtickformat(ax, ...)");

== Argument d'entrée

/ fmt: Specificateur de format : une conversion de type sprintf ou un mot-cle predefini.
/ ax: Axes cibles. Par defaut, les axes courants.

== Argument de sortie

/ fmt: Format courant des etiquettes.

== Description

#strong[xtickformat]; definit ou obtient le format des etiquettes de l'axe des x des axes courants.

 Le format s'applique aux etiquettes generees automatiquement.

 Le format est une conversion de type sprintf (par exemple #strong[%.2f]; ou #strong[%g];) appliquee a chaque valeur numerique de graduation. Les mots-cles predefinis #strong[usd];, #strong[eur];, #strong[gbp];, #strong[jpy];, #strong[degrees]; et #strong[percentage]; sont egalement acceptes. Les etiquettes personnalisees definies avec xticklabels ont priorite sur le format.


== Exemple

Formater les etiquettes de l'axe des x.

``````matlab

plot(1:10, (1:10) / 4);
xtickformat('%.2f');

``````


== Voir aussi

#nlink(<graphics:3_labels_styling.1_axes_appearance.xticks>)[xticks];, #nlink(<graphics:3_labels_styling.1_axes_appearance.xticklabels>)[xticklabels];, #nlink(<graphics:3_labels_styling.1_axes_appearance.ytickformat>)[ytickformat];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
