#import "../../nelson_help.typ": *

= rectangle <graphics:1_plots.7_surfaces_volumes_polygons.rectangle>

Cree un rectangle a coins droits, arrondis ou courbes

== Syntaxe

- #raw("rectangle()");
- #raw("rectangle('Position', pos)");
- #raw("rectangle('Position', pos, 'Curvature', cur)");
- #raw("rectangle(..., propertyName, propertyValue)");
- #raw("rectangle(ax, ...)");
- #raw("go = rectangle(...)");

== Argument d'entrée

/ pos: position et taille, sous la forme d'un vecteur a quatre elements \[x y w h\]. x et y donnent la position du coin inferieur gauche, w et h la largeur et la hauteur en unites de donnees.
/ cur: courbure, sous la forme d'un scalaire ou d'un vecteur a deux elements \[horizontale verticale\], chaque valeur etant comprise dans l'intervalle \[0, 1\]. 0 donne des coins droits et 1 la courbure maximale. Utilisez \[1 1\] pour tracer une ellipse.
/ ax: une valeur objet graphique scalaire : conteneur parent, un axes.
/ propertyName: une chaine scalaire ou un vecteur ligne de caracteres.
/ propertyValue: une valeur.

== Argument de sortie

/ go: un objet graphique : de type rectangle.

== Description

#strong[rectangle('Position', pos)]; trace un rectangle a la position et a la taille donnees par #strong[pos]; \= \[x y w h\].

 #strong[rectangle('Position', pos, 'Curvature', cur)]; trace un rectangle a coins arrondis. La courbure horizontale est la fraction de la largeur courbee le long des bords superieur et inferieur ; la courbure verticale est la fraction de la hauteur courbee le long des bords gauche et droit. Une valeur scalaire applique la meme longueur de courbure dans les deux directions, en utilisant le cote le plus court, de sorte que les coins sont circulaires. Utilisez #strong[\[1 1\]]; pour tracer une ellipse.

 #strong[rectangle(..., propertyName, propertyValue, ...)]; definit des proprietes optionnelles sous forme de paires nom-valeur, telles que #strong[FaceColor];, #strong[EdgeColor];, #strong[LineStyle]; et #strong[LineWidth];.

 Par defaut un rectangle n'a pas de remplissage (#strong[FaceColor]; vaut #strong['none'];), un contour gris fonce (#strong[EdgeColor];), un style de ligne continu et une epaisseur de ligne de 0.5 point.

 #strong[go \= rectangle(...)]; retourne le handle #strong[go]; de l'objet rectangle cree.


== Exemple

Rectangle arrondi et ellipse

``````matlab
f = figure('Color', 'w');
rectangle('Position', [0 0 2 1], 'Curvature', 0.2, ...
  'FaceColor', [0.6 0.8 1], 'EdgeColor', 'k', 'LineWidth', 2);
rectangle('Position', [2.5 0 1 1], 'Curvature', [1 1], ...
  'FaceColor', [1 0.8 0.6], 'EdgeColor', 'k', 'LineWidth', 2);
xlim([-0.3 3.8]);
ylim([-0.3 1.3]);
axis equal
axis off
``````


== Voir aussi

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.patch>)[patch];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.fill>)[fill];, #nlink(<graphics:3_labels_styling.4_labels_annotations.annotation>)[annotation];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
