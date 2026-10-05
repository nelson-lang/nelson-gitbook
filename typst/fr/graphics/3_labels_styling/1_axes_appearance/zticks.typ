#import "../../nelson_help.typ": *

= zticks <graphics:3_labels_styling.1_axes_appearance.zticks>

Definir ou obtenir les graduations de l'axe des z.

== Syntaxe

- #raw("ticks = zticks()");
- #raw("zticks(values)");
- #raw("zticks('auto')");
- #raw("zticks('manual')");
- #raw("m = zticks('mode')");
- #raw("zticks(ax, ...)");

== Argument d'entrée

/ values: Vecteur numerique des graduations de l'axe des z.
/ 'auto': Active la selection automatique des graduations de l'axe des z.
/ 'manual': Fige les graduations courantes de l'axe des z.
/ 'mode': Retourne le mode des graduations de l'axe des z.
/ ax: Axes cibles. Par defaut, les axes courants.

== Argument de sortie

/ ticks: Vecteur ligne numerique des graduations de l'axe des z.
/ m: 'auto' ou 'manual'.

== Description

#strong[zticks]; obtient ou definit les graduations de l'axe des z des axes courants.

 Specifier des graduations bascule le mode des graduations de l'axe des z sur #strong[manual];.


== Exemple

Definir les graduations de l'axe des z.

``````matlab

t = linspace(0, 10, 50);
plot3(sin(t), cos(t), t);
zticks(0:2:10);
ticks = zticks()

``````


== Voir aussi

#nlink(<graphics:3_labels_styling.1_axes_appearance.zticklabels>)[zticklabels];, #nlink(<graphics:3_labels_styling.1_axes_appearance.ztickangle>)[ztickangle];, #nlink(<graphics:3_labels_styling.1_axes_appearance.zlim>)[zlim];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
