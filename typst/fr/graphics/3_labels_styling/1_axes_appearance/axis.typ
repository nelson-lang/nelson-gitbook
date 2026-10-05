#import "../../nelson_help.typ": *

= axis <graphics:3_labels_styling.1_axes_appearance.axis>

Définit les limites et les rapports d'aspect des axes.

== Syntaxe

- #raw("axis([xmin, xmax, ymin, ymax, zmin, zmax, cmin, cmax])");
- #raw("axis([xmin, xmax, ymin, ymax, zmin, zmax])");
- #raw("axis([xmin, xmax, ymin, ymax])");
- #raw("axis(style)");
- #raw("axis('padded')");
- #raw("axis('tickaligned')");
- #raw("axis(mode)");
- #raw("axis(visibility)");
- #raw("lim = axis()");
- #raw("axis(ax, ...)");

== Argument d'entrée

/ \[xmin, xmax, ymin, ymax, zmin, zmax, cmin, cmax\]: définit les limites sur les axes X, Y, Z et couleur.
/ \[xmin, xmax, ymin, ymax, zmin, zmax\]: définit uniquement les limites sur X, Y, Z.
/ \[xmin, xmax, ymin, ymax\]: définit uniquement les limites sur X, Y.
/ style: 'tight', 'equal', 'image', 'square', 'fill', 'vis3d' ou 'normal' (par défaut).
/ 'padded', 'tickaligned': styles de selection automatique des limites.
/ cax: axes.
/ visibility: 'off' ou 'on' (par défaut).
/ mode: 'manual' (désactive l'ajustement automatique des axes selon les enfants de l'objet axe courant) ou 'auto' (choisit automatiquement toutes les limites d'axe).

== Argument de sortie

/ lim: Pour 2D : \[xmin, xmax, ymin, ymax\] ou pour 3D : \[xmin, xmax, ymin, ymax, zmin, zmax\]

== Description

#strong[axes]; définit les limites et l'apparence des axes.


== Exemple

``````matlab
f = figure();
t = 0:0.01:2*pi;
x = cos(t);
subplot(2, 2, 1);
plot(t, x);
title ('normal plot');

subplot(2, 2, 2);
plot (t, x);
title('axis square');
axis('square');

subplot(2, 2, 3);
plot (t, x);
title('axis equal');
axis('equal');

subplot(2, 2, 4);
plot (t, x);
title('normal plot again');
axis('normal');
``````


#align(center)[#image("axis.svg")]

== Voir aussi

#nlink(<graphics:2_graphics_objects.1_object_management.gca>)[gca];, #nlink(<graphics:2_graphics_objects.1_object_management.axes>)[axes];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
