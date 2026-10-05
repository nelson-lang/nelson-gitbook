#import "../../nelson_help.typ": *

= yyaxis <graphics:3_labels_styling.1_axes_appearance.yyaxis>

Cree ou selectionne un axe avec deux axes y.

== Syntaxe

- #raw("yyaxis left");
- #raw("yyaxis right");
- #raw("yyaxis(ax, 'left')");
- #raw("yyaxis(ax, 'right')");

== Argument d'entrée

/ 'left': Active le cote gauche. Les nouveaux traces sont ajoutes a l'axe y de gauche.
/ 'right': Active le cote droit. Les nouveaux traces sont ajoutes a l'axe y de droite.
/ ax: Axe cible : axes.

== Description

#strong[yyaxis]; cree un graphique avec deux axes y et selectionne le cote actif. Si l'axe courant n'a pas encore deux axes y, un second est ajoute ; s'il n'y a pas d'axe courant, il est cree.

 Les deux cotes partagent le meme axe x mais chacun possede ses propres limites, couleur, echelle, direction, graduations, etiquette et enfants. Les proprietes dont le nom commence par #strong[Y]; (comme #strong[YLim];, #strong[YColor]; ou #strong[YLabel];) s'appliquent uniquement au cote actif. Interrogez #strong[YAxisLocation]; pour savoir quel cote est actif.

 Par defaut, la regle de gauche utilise la premiere couleur du #strong[ColorOrder]; de l'axe et la regle de droite la deuxieme couleur.

 Les deux regles sont aussi disponibles comme objets via la propriete #strong[YAxis]; de l'axe : #strong[YAxis(1)]; est la regle de gauche et #strong[YAxis(2)]; la regle de droite, quel que soit le cote actif.

 #strong[cla reset]; supprime le second axe y et revient a un seul axe y.


== Exemple

``````matlab
f = figure();
x = linspace(0, 10);
yyaxis left
plot(x, sin(x))
ylabel('cote gauche')
yyaxis right
plot(x, 100 * cos(x))
ylabel('cote droit')

``````


#align(center)[#image("yyaxis.svg")]

== Voir aussi

#nlink(<graphics:2_graphics_objects.1_object_management.hold>)[hold];, #nlink(<graphics:3_labels_styling.1_axes_appearance.axis>)[axis];, #nlink(<graphics:3_labels_styling.4_labels_annotations.ylabel>)[ylabel];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
