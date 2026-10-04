# quiver

Trace de champ vectoriel 2-D.

## 📝 Syntaxe

- quiver(U, V)
- quiver(X, Y, U, V)
- quiver(..., scale)
- quiver(..., LineSpec)
- quiver(..., propertyName, propertyValue)
- quiver(parent, ...)
- h = quiver(...)

## 📥 Argument d'entrée

- X, Y - Coordonnees des bases des fleches, sous forme de scalaires, vecteurs ou matrices.
- U, V - Composantes vectorielles, sous forme de tableaux numeriques de meme taille.
- scale - Facteur d'echelle automatique. Utiliser 0 pour desactiver l'echelle automatique.
- LineSpec - Specification de style de ligne, marqueur et couleur.
- parent - Parent axes ou hggroup.
- propertyName - Nom de propriete sous forme de chaine scalaire ou de vecteur de caracteres.
- propertyValue - Valeur de propriete.

## 📤 Argument de sortie

- h - Objet graphique quiver.

## 📄 Description

<b>quiver(U,V)</b> trace des fleches avec les composantes vectorielles <b>U</b> et <b>V</b> sur une grille reguliere.

<b>quiver(X,Y,U,V)</b> trace les fleches aux coordonnees donnees par <b>X</b> et <b>Y</b>.

L'objet retourne a le type <b>quiver</b>. Ses proprietes publiques incluent <b>XData</b>, <b>YData</b>, <b>UData</b>, <b>VData</b>, <b>WData</b>, <b>AutoScale</b>, <b>AutoScaleFactor</b>, <b>ScaleFactor</b>, <b>Color</b>, <b>LineStyle</b>, <b>LineWidth</b>, <b>Marker</b>, <b>MarkerSize</b>, <b>MaxHeadSize</b>, <b>ShowArrowHead</b>, <b>Alignment</b>, <b>DisplayName</b> et les proprietes graphiques communes.

Voir [proprietes de quiver](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.quiver.properties.md) pour la liste complete des proprietes.

## 💡 Exemples

Tracer un champ vectoriel sur une grille reguliere.

```matlab
[X, Y] = meshgrid(-2:0.5:2, -2:0.5:2);
U = -Y;
V = X;
h = quiver(X, Y, U, V);
axis equal
```

<img src="quiver_1.svg" align="middle"/>
Styliser les fleches et desactiver l'echelle automatique.

```matlab
x = 1:5;
y = [1 2 1 2 1];
u = [1 0 -1 0 1];
v = [0 1 0 -1 0];
h = quiver(x, y, u, v, 0, 'r--o', 'LineWidth', 1.5);
h.ShowArrowHead = 'on';
```

<img src="quiver_2.svg" align="middle"/>

## 🔗 Voir aussi

[proprietes de quiver](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.quiver.properties.md), [meshgrid](../../../elementary_functions/meshgrid.md), [quiver3](../../../graphics/1_plots/5_vector_fields/quiver3.md), [plot](../../../graphics/1_plots/1_line_plots/plot.md).

## 🕔 Historique

| Version | 📄 Description               |
| ------- | ---------------------------- |
| 1.0.0   | version initiale             |
| 2.0.0   | objet graphique quiver natif |

<!--
## 👤 Auteur

Allan CORNET
-->
