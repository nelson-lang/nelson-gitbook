#import "../../nelson_help.typ": *

= xticklabels <graphics:3_labels_styling.1_axes_appearance.xticklabels>

Definir ou obtenir les etiquettes de l'axe des x.

== Syntaxe

- #raw("labels = xticklabels()");
- #raw("xticklabels(labels)");
- #raw("xticklabels('auto')");
- #raw("xticklabels('manual')");
- #raw("m = xticklabels('mode')");
- #raw("xticklabels(ax, ...)");

== Argument d'entrée

/ labels: Tableau de cellules de chaines ou tableau de chaines des etiquettes de l'axe des x.
/ 'auto': Active les etiquettes automatiques de l'axe des x.
/ 'manual': Fige les etiquettes courantes de l'axe des x.
/ 'mode': Retourne le mode des etiquettes de l'axe des x.
/ ax: Axes cibles. Par defaut, les axes courants.

== Argument de sortie

/ labels: Tableau de cellules de chaines des etiquettes de l'axe des x.
/ m: 'auto' ou 'manual'.

== Description

#strong[xticklabels]; obtient ou definit les etiquettes de l'axe des x des axes courants.

 Specifier des etiquettes bascule le mode des etiquettes de l'axe des x sur #strong[manual];.


== Exemple

Definir les etiquettes de l'axe des x.

``````matlab

bar([10 20 30 41]);
xticks(1:4);
xticklabels({'A','B','C','D'});
labels = xticklabels()

``````


== Voir aussi

#nlink(<graphics:3_labels_styling.1_axes_appearance.xticks>)[xticks];, #nlink(<graphics:3_labels_styling.1_axes_appearance.xtickangle>)[xtickangle];, #nlink(<graphics:3_labels_styling.1_axes_appearance.yticklabels>)[yticklabels];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
