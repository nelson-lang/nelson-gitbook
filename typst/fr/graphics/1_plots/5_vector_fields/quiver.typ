#import "../../nelson_help.typ": *

= quiver <graphics:1_plots.5_vector_fields.quiver>

Trace de champ vectoriel 2-D.

== Syntaxe

- #raw("quiver(U, V)");
- #raw("quiver(X, Y, U, V)");
- #raw("quiver(..., scale)");
- #raw("quiver(..., LineSpec)");
- #raw("quiver(..., propertyName, propertyValue)");
- #raw("quiver(parent, ...)");
- #raw("h = quiver(...)");

== Argument d'entrée

/ X, Y: Coordonnees des bases des fleches, sous forme de scalaires, vecteurs ou matrices.
/ U, V: Composantes vectorielles, sous forme de tableaux numeriques de meme taille.
/ scale: Facteur d'echelle automatique. Utiliser 0 pour desactiver l'echelle automatique.
/ LineSpec: Specification de style de ligne, marqueur et couleur.
/ parent: Parent axes ou hggroup.
/ propertyName: Nom de propriete sous forme de chaine scalaire ou de vecteur de caracteres.
/ propertyValue: Valeur de propriete.

== Argument de sortie

/ h: Objet graphique quiver.

== Description

#strong[quiver(U,V)]; trace des fleches avec les composantes vectorielles #strong[U]; et #strong[V]; sur une grille reguliere.

 #strong[quiver(X,Y,U,V)]; trace les fleches aux coordonnees donnees par #strong[X]; et #strong[Y];.

 L'objet retourne a le type #strong[quiver];. Ses proprietes publiques incluent #strong[XData];, #strong[YData];, #strong[UData];, #strong[VData];, #strong[WData];, #strong[AutoScale];, #strong[AutoScaleFactor];, #strong[ScaleFactor];, #strong[Color];, #strong[LineStyle];, #strong[LineWidth];, #strong[Marker];, #strong[MarkerSize];, #strong[MaxHeadSize];, #strong[ShowArrowHead];, #strong[Alignment];, #strong[DisplayName]; et les proprietes graphiques communes.

 Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.quiver.properties>)[proprietes de quiver]; pour la liste complete des proprietes.


== Exemples

Tracer un champ vectoriel sur une grille reguliere.

``````matlab
[X, Y] = meshgrid(-2:0.5:2, -2:0.5:2);
U = -Y;
V = X;
h = quiver(X, Y, U, V);
axis equal
``````


#align(center)[#image("quiver_1.svg")]
Styliser les fleches et desactiver l'echelle automatique.

``````matlab
x = 1:5;
y = [1 2 1 2 1];
u = [1 0 -1 0 1];
v = [0 1 0 -1 0];
h = quiver(x, y, u, v, 0, 'r--o', 'LineWidth', 1.5);
h.ShowArrowHead = 'on';
``````


#align(center)[#image("quiver_2.svg")]

== Voir aussi

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.quiver.properties>)[proprietes de quiver];, #nlink(<elementary_functions:1_array_creation_shape.meshgrid>)[meshgrid];, #nlink(<graphics:1_plots.5_vector_fields.quiver3>)[quiver3];, #nlink(<graphics:1_plots.1_line_plots.plot>)[plot];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [objet graphique quiver natif],
)

// Auteur: Allan CORNET
