#import "../../nelson_help.typ": *

= zlim <graphics:3_labels_styling.1_axes_appearance.zlim>

définir ou obtenir les limites de l'axe des z.

== Syntaxe

- #raw("lims = zlim()");
- #raw("zlim([zmin, zmax])");
- #raw("zlim('auto')");
- #raw("zlim('manual')");
- #raw("m = zlim('mode')");
- #raw("method = zlim('method')");
- #raw("zlim('tight')");
- #raw("zlim('padded')");
- #raw("zlim('tickaligned')");
- #raw("zlim(ax, ...)");

== Argument d'entrée

/ \[zmin, zmax\]: coordonnées z : vecteur ou matrice.
/ 'auto': activer la sélection automatique des limites.
/ 'manual': figer les limites de l'axe des z à leur valeur actuelle.
/ 'mode': retourne le mode actuel des limites de l'axe des z.
/ 'method': retourne la methode de selection automatique des limites de l'axe des z.
/ 'tight', 'padded' ou 'tickaligned': definit la methode de selection automatique des limites de l'axe des z.
/ ax: une valeur scalaire d'objet graphique : conteneur parent, spécifié comme un axes.

== Argument de sortie

/ lims: vecteur à deux éléments : \[zmin, zmax\]
/ m: 'auto' ou 'manual'.
/ method: 'tight', 'padded' ou 'tickaligned'.

== Description

#strong[zlim]; obtient ou définit les limites de l'axe des z pour le tracé actuel.


== Exemple

``````matlab
x = linspace(-1, 1);
y = sin(2*pi*x);
plot(x, y);
lim = zlim()
m = zlim('mode')

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
