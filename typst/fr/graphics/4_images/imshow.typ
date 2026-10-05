#import "../nelson_help.typ": *

= imshow <graphics:4_images.imshow>

Affiche une image.

== Syntaxe

- #raw("imshow(filename)");
- #raw("imshow(img)");
- #raw("imshow(RGB)");
- #raw("imshow(img, [low high])");
- #raw("imshow(img, [])");
- #raw("imshow(img, map)");
- #raw("imshow(..., propertyName, propertyValue)");
- #raw("go = imshow(...)");

== Argument d'entrée

/ filename: Vecteur ligne de caractères : nom du fichier de l'image à afficher.
/ img: Image en niveaux de gris : matrice.
/ RGB: Image en vraies couleurs : tableau m-par-n-par-3.
/ \[low high\]: Plage d'affichage de l'image en niveaux de gris.
/ map: Palette de couleurs : matrice c-par-3.
/ propertyName: Une chaîne scalaire ou un vecteur ligne de caractères (pour compatibilité).
/ propertyValue: Une valeur (pour compatibilité).

== Argument de sortie

/ go: Un objet graphique : type image.

== Description

#strong[imshow(img)]; affiche l'image #strong[img];.


== Exemple

``````matlab
f = figure();
filename = [tempdir, 'apollo_8_earthrise_1968_as08-14-2383.jpg'];
websave(filename, 'https://www.nasa.gov/wp-content/uploads/2025/05/3dmodels-casa-2025-astro.jpg');
h = imshow(filename);

``````


== Voir aussi

#nlink(<graphics_io:imread>)[imread];, #nlink(<graphics:4_images.image>)[image];, #nlink(<graphics:4_images.imagesc>)[imagesc];, #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
