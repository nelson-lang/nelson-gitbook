#import "nelson_help.typ": *

= saveas <graphics_io:saveas>

Enregistre une figure dans un format de fichier spécifique.

== Syntaxe

- #raw("saveas(fig, filename)");
- #raw("saveas(fig, filename, formattype)");

== Argument d'entrée

/ fig: objet figure.
/ filename: vecteur de caractères ou chaîne scalaire : nom de fichier de destination.
/ formattype: vecteur de caractères ou chaîne scalaire : extension ou type de format.

== Description

#strong[saveas]; enregistre la figure dans un format de fichier spécifique.

 Le #strong[formattype]; explicite est prioritaire sur l'extension du fichier. Sans extension, PNG est sélectionné et #strong[.png]; est ajouté. Les modes bureau, web et headless utilisent le même moteur de rendu et le même registre de formats.

 #strong[Fond :]; tant que la propriété #strong[InvertHardcopy]; de la figure vaut #strong['on']; (valeur par défaut), le fond exporté est blanc quelle que soit la couleur #strong[Color]; affichée (gris clair par défaut). Passer #strong[InvertHardcopy]; à #strong['off']; pour exporter la couleur de fond affichée.

 Les #strong[formats vectoriels]; utilisent des exporteurs de figure dédiés :

 

#table(
  columns: 3,
  [Option], [Format], [Extension], 
  [svg], [Scalable Vector Graphics], [.svg], 
  [pdf], [Portable Document Format, page entière en couleur], [.pdf], 
)
 Les #strong[formats raster]; sont encodés par le même registre que #strong[imwrite]; :

 

#table(
  columns: 3,
  [Option canonique], [Alias], [Extension], 
  [png], [-], [.png], 
  [jpg], [jpeg, jfif], [.jpg, .jpeg, .jfif], 
  [gif], [-], [.gif], 
  [webp], [-], [.webp], 
  [tiff], [tif], [.tiff, .tif], 
  [bmp], [dib], [.bmp, .dib], 
  [tga], [-], [.tga], 
  [pbm, pgm, ppm, pnm], [-], [.pbm, .pgm, .ppm, .pnm], 
  [pcx], [-], [.pcx], 
)

== Exemple

``````matlab
x = -2:0.25:2;
y = x;
[X,Y] = meshgrid(x);
F = X.*exp(-X.^2-Y.^2);
surf(X,Y,F);
saveas(gcf(), [tempdir, 'svg-file.svg']);
saveas(gcf(), [tempdir, 'webp-file.webp']);
saveas(gcf(), [tempdir, 'bitmap-file.bmp']);
saveas(gcf(), [tempdir, 'document-file.pdf']);
close(gcf());

``````


== Voir aussi

#nlink(<graphics:2_graphics_objects.1_object_management.gcf>)[gcf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [1.13.0], [tiff format added],
  [2.0.0], [ajout des formats d'export communs aux modes bureau, web et headless],
)

// Auteur: Allan CORNET
