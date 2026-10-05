#import "../../nelson_help.typ": *

= ytickformat <graphics:3_labels_styling.1_axes_appearance.ytickformat>

Definir ou obtenir le format des etiquettes de l'axe des y.

== Syntaxe

- #raw("ytickformat(fmt)");
- #raw("fmt = ytickformat()");
- #raw("ytickformat(ax, ...)");

== Argument d'entrée

/ fmt: Specificateur de format : une conversion de type sprintf ou un mot-cle predefini.
/ ax: Axes cibles. Par defaut, les axes courants.

== Argument de sortie

/ fmt: Format courant des etiquettes.

== Description

#strong[ytickformat]; definit ou obtient le format des etiquettes de l'axe des y des axes courants.

 Le format s'applique aux etiquettes generees automatiquement.

 Le format est une conversion de type sprintf (par exemple #strong[%.2f]; ou #strong[%g];) appliquee a chaque valeur numerique de graduation. Les mots-cles predefinis #strong[usd];, #strong[eur];, #strong[gbp];, #strong[jpy];, #strong[degrees]; et #strong[percentage]; sont egalement acceptes. Les etiquettes personnalisees definies avec yticklabels ont priorite sur le format.


== Exemple

Formater les etiquettes de l'axe des y.

``````matlab

plot(1:10, (1:10) * 100);
ytickformat('usd');

``````


== Voir aussi

#nlink(<graphics:3_labels_styling.1_axes_appearance.yticks>)[yticks];, #nlink(<graphics:3_labels_styling.1_axes_appearance.yticklabels>)[yticklabels];, #nlink(<graphics:3_labels_styling.1_axes_appearance.xtickformat>)[xtickformat];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
