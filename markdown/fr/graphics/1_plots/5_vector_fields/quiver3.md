# quiver3

Trace de champ vectoriel 3-D.

## 📝 Syntaxe

- quiver3(Z, U, V, W)
- quiver3(X, Y, Z, U, V, W)
- quiver3(..., scale)
- quiver3(..., LineSpec)
- quiver3(..., propertyName, propertyValue)
- quiver3(parent, ...)
- h = quiver3(...)

## 📥 Argument d'entrée

- X, Y, Z - Coordonnees des bases des fleches, sous forme de scalaires, vecteurs, matrices ou tableaux de meme taille que les composantes.
- U, V, W - Composantes vectorielles, sous forme de tableaux numeriques de meme taille.
- scale - Facteur d'echelle automatique. Utiliser 0 pour desactiver l'echelle automatique.
- LineSpec - Specification de style de ligne, marqueur et couleur.
- parent - Parent axes ou hggroup.
- propertyName - Nom de propriete sous forme de chaine scalaire ou de vecteur de caracteres.
- propertyValue - Valeur de propriete.

## 📤 Argument de sortie

- h - Objet graphique quiver.

## 📄 Description


<b>quiver3(Z,U,V,W)</b> trace des fleches 3-D sur une grille x-y reguliere en utilisant <b>Z</b> comme donnees de coordonnee z. 

<b>quiver3(X,Y,Z,U,V,W)</b> trace les fleches aux coordonnees donnees par <b>X</b>, <b>Y</b> et <b>Z</b>. 

L'objet retourne a le type <b>quiver</b>. Ses proprietes publiques incluent <b>XData</b>, <b>YData</b>, <b>ZData</b>, <b>UData</b>, <b>VData</b>, <b>WData</b>, <b>AutoScale</b>, <b>AutoScaleFactor</b>, <b>ScaleFactor</b>, <b>Color</b>, <b>LineStyle</b>, <b>LineWidth</b>, <b>Marker</b>, <b>MarkerSize</b>, <b>MaxHeadSize</b>, <b>ShowArrowHead</b>, <b>Alignment</b>, <b>DisplayName</b> et les proprietes graphiques communes.

## 💡 Exemples

Tracer un champ vectoriel 3-D.

```matlab
[x, y, z] = meshgrid(-1:1, -1:1, -1:1);
 u = y;
 v = -x;
 w = z;
 quiver3(x, y, z, u, v, w);
 axis equal
```
<img src="quiver3_1.svg" align="middle"/>
Desactiver l'echelle automatique et styliser les fleches.

```matlab
x = [0 1 2];
 y = [0 1 0];
 z = [0 0 1];
 u = [1 0 -1];
 v = [0 1 0];
 w = [0.5 0.5 1];
 h = quiver3(x, y, z, u, v, w, 0, 'r--o');
 h.LineWidth = 1.5;
```
Tracer les normales de surface sous forme de fleches 3-D.

```matlab
[X,Y] = meshgrid(-2:0.25:2,-1:0.2:1);
 Z = X.*exp(-X.^2 - Y.^2);
 [U,V,W] = surfnorm(X,Y,Z);
 quiver3(X,Y,Z,U,V,W)
 hold on
 surf(X,Y,Z)
 axis equal
```


## 🔗 Voir aussi

[quiver](../../../graphics/1_plots/5_vector_fields/quiver.md), [plot3](../../../graphics/1_plots/1_line_plots/plot3.md), [meshgrid](../../../elementary_functions/1_array_creation_shape/meshgrid.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | objet graphique quiver natif |

<!--
## 👤 Auteur

Allan CORNET
-->
