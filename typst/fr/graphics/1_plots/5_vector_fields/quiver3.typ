#import "../../nelson_help.typ": *

= quiver3 <graphics:1_plots.5_vector_fields.quiver3>

Trace de champ vectoriel 3-D.

== Syntaxe

- #raw("quiver3(Z, U, V, W)");
- #raw("quiver3(X, Y, Z, U, V, W)");
- #raw("quiver3(..., scale)");
- #raw("quiver3(..., LineSpec)");
- #raw("quiver3(..., propertyName, propertyValue)");
- #raw("quiver3(parent, ...)");
- #raw("h = quiver3(...)");

== Argument d'entrée

/ X, Y, Z: Coordonnees des bases des fleches, sous forme de scalaires, vecteurs, matrices ou tableaux de meme taille que les composantes.
/ U, V, W: Composantes vectorielles, sous forme de tableaux numeriques de meme taille.
/ scale: Facteur d'echelle automatique. Utiliser 0 pour desactiver l'echelle automatique.
/ LineSpec: Specification de style de ligne, marqueur et couleur.
/ parent: Parent axes ou hggroup.
/ propertyName: Nom de propriete sous forme de chaine scalaire ou de vecteur de caracteres.
/ propertyValue: Valeur de propriete.

== Argument de sortie

/ h: Objet graphique quiver.

== Description

#strong[quiver3(Z,U,V,W)]; trace des fleches 3-D sur une grille x-y reguliere en utilisant #strong[Z]; comme donnees de coordonnee z.

 #strong[quiver3(X,Y,Z,U,V,W)]; trace les fleches aux coordonnees donnees par #strong[X];, #strong[Y]; et #strong[Z];.

 L'objet retourne a le type #strong[quiver];. Ses proprietes publiques incluent #strong[XData];, #strong[YData];, #strong[ZData];, #strong[UData];, #strong[VData];, #strong[WData];, #strong[AutoScale];, #strong[AutoScaleFactor];, #strong[ScaleFactor];, #strong[Color];, #strong[LineStyle];, #strong[LineWidth];, #strong[Marker];, #strong[MarkerSize];, #strong[MaxHeadSize];, #strong[ShowArrowHead];, #strong[Alignment];, #strong[DisplayName]; et les proprietes graphiques communes.


== Exemples

Tracer un champ vectoriel 3-D.

``````matlab
[x, y, z] = meshgrid(-1:1, -1:1, -1:1);
 u = y;
 v = -x;
 w = z;
 quiver3(x, y, z, u, v, w);
 axis equal
``````


#align(center)[#image("quiver3_1.svg")]
Desactiver l'echelle automatique et styliser les fleches.

``````matlab
x = [0 1 2];
 y = [0 1 0];
 z = [0 0 1];
 u = [1 0 -1];
 v = [0 1 0];
 w = [0.5 0.5 1];
 h = quiver3(x, y, z, u, v, w, 0, 'r--o');
 h.LineWidth = 1.5;
``````

Tracer les normales de surface sous forme de fleches 3-D.

``````matlab
[X,Y] = meshgrid(-2:0.25:2,-1:0.2:1);
 Z = X.*exp(-X.^2 - Y.^2);
 [U,V,W] = surfnorm(X,Y,Z);
 quiver3(X,Y,Z,U,V,W)
 hold on
 surf(X,Y,Z)
 axis equal
``````


== Voir aussi

#nlink(<graphics:1_plots.5_vector_fields.quiver>)[quiver];, #nlink(<graphics:1_plots.1_line_plots.plot3>)[plot3];, #nlink(<elementary_functions:1_array_creation_shape.meshgrid>)[meshgrid];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [objet graphique quiver natif],
)

// Auteur: Allan CORNET
