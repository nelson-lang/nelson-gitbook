#import "../../nelson_help.typ": *

= xlim <graphics:3_labels_styling.1_axes_appearance.xlim>

définir ou obtenir les limites de l'axe des x.

== Syntaxe

- #raw("lims = xlim()");
- #raw("xlim([xmin, xmax])");
- #raw("xlim('auto')");
- #raw("xlim('manual')");
- #raw("m = xlim('mode')");
- #raw("method = xlim('method')");
- #raw("xlim('tight')");
- #raw("xlim('padded')");
- #raw("xlim('tickaligned')");
- #raw("xlim(ax, ...)");

== Argument d'entrée

/ \[xmin, xmax\]: coordonnées x : vecteur ou matrice.
/ 'auto': activer la sélection automatique des limites.
/ 'manual': figer les limites de l'axe des x à leur valeur actuelle.
/ 'mode': retourne le mode actuel des limites de l'axe des x.
/ 'method': retourne la methode de selection automatique des limites de l'axe des x.
/ 'tight', 'padded' ou 'tickaligned': definit la methode de selection automatique des limites de l'axe des x.
/ ax: une valeur scalaire d'objet graphique : conteneur parent, spécifié comme un axes.

== Argument de sortie

/ lims: vecteur à deux éléments : \[xmin, xmax\]
/ m: 'auto' ou 'manual'.
/ method: 'tight', 'padded' ou 'tickaligned'.

== Description

#strong[xlim]; obtient ou définit les limites de l'axe des x pour le tracé actuel.


== Exemple

``````matlab
x = linspace(-1, 1);
y = sin(2*pi*x);
plot(x, y);
lim = xlim()
m = xlim('mode')

``````


== Voir aussi

#nlink(<graphics:2_graphics_objects.1_object_management.axes>)[axes];, #nlink(<graphics:3_labels_styling.1_axes_appearance.axis>)[axis];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
