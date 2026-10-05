#import "../../nelson_help.typ": *

= ztickformat <graphics:3_labels_styling.1_axes_appearance.ztickformat>

Definir ou obtenir le format des etiquettes de l'axe des z.

== Syntaxe

- #raw("ztickformat(fmt)");
- #raw("fmt = ztickformat()");
- #raw("ztickformat(ax, ...)");

== Argument d'entrée

/ fmt: Specificateur de format : une conversion de type sprintf ou un mot-cle predefini.
/ ax: Axes cibles. Par defaut, les axes courants.

== Argument de sortie

/ fmt: Format courant des etiquettes.

== Description

#strong[ztickformat]; definit ou obtient le format des etiquettes de l'axe des z des axes courants.

 Le format s'applique aux etiquettes generees automatiquement.

 Le format est une conversion de type sprintf (par exemple #strong[%.2f]; ou #strong[%g];) appliquee a chaque valeur numerique de graduation. Les mots-cles predefinis #strong[usd];, #strong[eur];, #strong[gbp];, #strong[jpy];, #strong[degrees]; et #strong[percentage]; sont egalement acceptes. Les etiquettes personnalisees definies avec zticklabels ont priorite sur le format.


== Exemple

Formater les etiquettes de l'axe des z.

``````matlab

t = linspace(0, 10, 50);
plot3(sin(t), cos(t), t / 4);
ztickformat('%.1f');

``````


== Voir aussi

#nlink(<graphics:3_labels_styling.1_axes_appearance.zticks>)[zticks];, #nlink(<graphics:3_labels_styling.1_axes_appearance.zticklabels>)[zticklabels];, #nlink(<graphics:3_labels_styling.1_axes_appearance.xtickformat>)[xtickformat];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
