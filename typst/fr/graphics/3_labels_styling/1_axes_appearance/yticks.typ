#import "../../nelson_help.typ": *

= yticks <graphics:3_labels_styling.1_axes_appearance.yticks>

Definir ou obtenir les graduations de l'axe des y.

== Syntaxe

- #raw("ticks = yticks()");
- #raw("yticks(values)");
- #raw("yticks('auto')");
- #raw("yticks('manual')");
- #raw("m = yticks('mode')");
- #raw("yticks(ax, ...)");

== Argument d'entrée

/ values: Vecteur numerique des graduations de l'axe des y.
/ 'auto': Active la selection automatique des graduations de l'axe des y.
/ 'manual': Fige les graduations courantes de l'axe des y.
/ 'mode': Retourne le mode des graduations de l'axe des y.
/ ax: Axes cibles. Par defaut, les axes courants.

== Argument de sortie

/ ticks: Vecteur ligne numerique des graduations de l'axe des y.
/ m: 'auto' ou 'manual'.

== Description

#strong[yticks]; obtient ou definit les graduations de l'axe des y des axes courants.

 Specifier des graduations bascule le mode des graduations de l'axe des y sur #strong[manual];.


== Exemple

Definir les graduations de l'axe des y.

``````matlab

x = linspace(0, 10, 50);
plot(x, sin(x));
yticks(-1:0.5:1);
ticks = yticks()

``````


== Voir aussi

#nlink(<graphics:3_labels_styling.1_axes_appearance.yticklabels>)[yticklabels];, #nlink(<graphics:3_labels_styling.1_axes_appearance.ytickangle>)[ytickangle];, #nlink(<graphics:3_labels_styling.1_axes_appearance.ylim>)[ylim];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
