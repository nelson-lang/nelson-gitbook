#import "../nelson_help.typ": *

= exportapp <graphics:5_printing_saving.exportapp>

Enregistre une figure avec ses composants d'interface dans un fichier image.

== Syntaxe

- #raw("exportapp(fig, filename)");

== Argument d'entrée

/ fig: objet figure : figure ou figure d'interface à capturer.
/ filename: un vecteur de caractères ou une chaîne scalaire : fichier image de destination.

== Description

#strong[exportapp(fig, filename)]; capture la figure #strong[fig];, y compris tous ses composants d'interface, et l'écrit dans le fichier image #strong[filename];.

 Le format du fichier de sortie est déterminé par l'extension de #strong[filename]; (par exemple #strong[.png];, #strong[.jpg]; ou #strong[.tif];).

 Contrairement à #strong[saveas];, #strong[exportapp]; est destinée à exporter les figures créées avec #strong[uifigure]; contenant des composants d'interface tels que des boutons, des curseurs et des tableaux.


== Exemple

``````matlab
f = uifigure('Position', [100 100 300 200]);
b = uibutton(f, 'Text', 'Export me');
exportapp(f, [tempdir(), 'exportapp_example.png']);
img = imread([tempdir(), 'exportapp_example.png']);
figure();
imshow(img)

``````


== Voir aussi

#nlink(<graphics:4_images.getframe>)[getframe];, #nlink(<graphics_io:saveas>)[saveas];, #nlink(<gui:uifigure>)[uifigure];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
