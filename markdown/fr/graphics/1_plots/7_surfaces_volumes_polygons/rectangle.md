# rectangle

Cree un rectangle a coins droits, arrondis ou courbes

## 📝 Syntaxe

- rectangle()
- rectangle('Position', pos)
- rectangle('Position', pos, 'Curvature', cur)
- rectangle(..., propertyName, propertyValue)
- rectangle(ax, ...)
- go = rectangle(...)

## 📥 Argument d'entrée

- pos - position et taille, sous la forme d'un vecteur a quatre elements [x y w h]. x et y donnent la position du coin inferieur gauche, w et h la largeur et la hauteur en unites de donnees.
- cur - courbure, sous la forme d'un scalaire ou d'un vecteur a deux elements [horizontale verticale], chaque valeur etant comprise dans l'intervalle [0, 1]. 0 donne des coins droits et 1 la courbure maximale. Utilisez [1 1] pour tracer une ellipse.
- ax - une valeur objet graphique scalaire : conteneur parent, un axes.
- propertyName - une chaine scalaire ou un vecteur ligne de caracteres.
- propertyValue - une valeur.

## 📤 Argument de sortie

- go - un objet graphique : de type rectangle.

## 📄 Description


<b>rectangle('Position', pos)</b> trace un rectangle a la position et a la taille donnees par <b>pos</b> = [x y w h]. 

<b>rectangle('Position', pos, 'Curvature', cur)</b> trace un rectangle a coins arrondis. La courbure horizontale est la fraction de la largeur courbee le long des bords superieur et inferieur ; la courbure verticale est la fraction de la hauteur courbee le long des bords gauche et droit. Une valeur scalaire applique la meme longueur de courbure dans les deux directions, en utilisant le cote le plus court, de sorte que les coins sont circulaires. Utilisez <b>[1 1]</b> pour tracer une ellipse. 

<b>rectangle(..., propertyName, propertyValue, ...)</b> definit des proprietes optionnelles sous forme de paires nom-valeur, telles que <b>FaceColor</b>, <b>EdgeColor</b>, <b>LineStyle</b> et <b>LineWidth</b>. 

Par defaut un rectangle n'a pas de remplissage (<b>FaceColor</b> vaut <b>'none'</b>), un contour gris fonce (<b>EdgeColor</b>), un style de ligne continu et une epaisseur de ligne de 0.5 point. 

<b>go = rectangle(...)</b> retourne le handle <b>go</b> de l'objet rectangle cree.

## 💡 Exemple

Rectangle arrondi et ellipse

```matlab
f = figure('Color', 'w');
rectangle('Position', [0 0 2 1], 'Curvature', 0.2, ...
  'FaceColor', [0.6 0.8 1], 'EdgeColor', 'k', 'LineWidth', 2);
rectangle('Position', [2.5 0 1 1], 'Curvature', [1 1], ...
  'FaceColor', [1 0.8 0.6], 'EdgeColor', 'k', 'LineWidth', 2);
xlim([-0.3 3.8]);
ylim([-0.3 1.3]);
axis equal
axis off
```


## 🔗 Voir aussi

[patch](../../../graphics/1_plots/7_surfaces_volumes_polygons/patch.md), [fill](../../../graphics/1_plots/7_surfaces_volumes_polygons/fill.md), [annotation](../../../graphics/3_labels_styling/4_labels_annotations/annotation.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
