#import "../nelson_help.typ": *

= print <graphics:5_printing_saving.print>

Exporte une figure vers un fichier image ou document.

== Syntaxe

- #raw("print(filename)");
- #raw("print(filename, formatoption)");
- #raw("print(fig, filename)");
- #raw("print(fig, filename, formatoption)");
- #raw("print(fig, filename, formatoption, resolution)");

== Argument d'entrée

/ fig: Objet graphique figure. Si omis, la figure courante renvoyee par #strong[gcf()]; est utilisee.
/ filename: Vecteur de caracteres ou chaine scalaire : nom du fichier de destination.
/ formatoption: Vecteur de caracteres ou chaine scalaire : une option de peripherique #strong[-d]; (par exemple #strong['-dpng'];, #strong['-dpdf'];, #strong['-dsvg'];). Si omis, le format est deduit de l'extension du fichier.
/ resolution: Vecteur de caracteres ou chaine scalaire : une option de resolution #strong[-r]; (par exemple #strong['-r150'];). Acceptee pour compatibilite ; l'export suit la taille de la figure.

== Description

#strong[print]; exporte une figure vers un fichier image ou document. C'est une enveloppe legere autour de #strong[saveas]; : l'option de peripherique #strong[-d]; selectionne le format de sortie et la figure est exportee via le moteur de rendu partage bureau, web et sans affichage.

 Si aucune option #strong[-d]; n'est fournie, le format est deduit de l'extension du fichier, et PNG est utilise lorsque le nom de fichier n'a pas d'extension. Une option de resolution #strong[-r]; est acceptee pour compatibilite mais ne reechantillonne pas la sortie.

 L'option de peripherique correspond au meme registre de formats que #strong[saveas]; :

 

#table(
  columns: 3,
  [Option de peripherique], [Format], [Extension], 
  [-dpng], [Portable Network Graphics], [.png], 
  [-djpeg, -djpg], [JPEG], [.jpg], 
  [-dtiff, -dtiffn, -dtif], [TIFF], [.tif], 
  [-dbmp], [Bitmap], [.bmp], 
  [-dgif], [Graphics Interchange Format], [.gif], 
  [-dwebp], [WebP], [.webp], 
  [-dsvg], [Scalable Vector Graphics], [.svg], 
  [-dpdf], [Portable Document Format], [.pdf], 
)
 #strong[Arriere-plan :]; comme pour #strong[saveas];, tant que la propriete #strong[InvertHardcopy]; de la figure vaut #strong['on']; (valeur par defaut), l'arriere-plan exporte est blanc quelle que soit la couleur #strong[Color]; de la figure a l'ecran.


== Exemples

Exporter la figure courante en PNG, PDF et SVG.

``````matlab

f = figure('Visible', 'off');
plot(1:10, (1:10) .^ 2);
title('Donnees quadratiques');
print(f, [tempname(), '.png'], '-dpng');
print(f, [tempname(), '.pdf'], '-dpdf');
print(f, [tempname(), '.svg'], '-dsvg', '-r150');
close(f);

``````

Deduire le format de l'extension du fichier.

``````matlab

f = figure('Visible', 'off');
plot(1:5);
pngfile = [tempname(), '.png'];
print(pngfile);
assert(isfile(pngfile));
close(f);

``````


== Voir aussi

#nlink(<graphics_io:saveas>)[saveas];, #nlink(<graphics:5_printing_saving.savefig>)[savefig];, #nlink(<graphics:2_graphics_objects.1_object_management.gcf>)[gcf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
