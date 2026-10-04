# print

Exporte une figure vers un fichier image ou document.

## 📝 Syntaxe

- print(filename)
- print(filename, formatoption)
- print(fig, filename)
- print(fig, filename, formatoption)
- print(fig, filename, formatoption, resolution)

## 📥 Argument d'entrée

- fig - Objet graphique figure. Si omis, la figure courante renvoyee par <b>gcf()</b> est utilisee.
- filename - Vecteur de caracteres ou chaine scalaire : nom du fichier de destination.
- formatoption - Vecteur de caracteres ou chaine scalaire : une option de peripherique <b>-d</b> (par exemple <b>'-dpng'</b>, <b>'-dpdf'</b>, <b>'-dsvg'</b>). Si omis, le format est deduit de l'extension du fichier.
- resolution - Vecteur de caracteres ou chaine scalaire : une option de resolution <b>-r</b> (par exemple <b>'-r150'</b>). Acceptee pour compatibilite ; l'export suit la taille de la figure.

## 📄 Description

<b>print</b> exporte une figure vers un fichier image ou document. C'est une enveloppe legere autour de <b>saveas</b> : l'option de peripherique <b>-d</b> selectionne le format de sortie et la figure est exportee via le moteur de rendu partage bureau, web et sans affichage.

Si aucune option <b>-d</b> n'est fournie, le format est deduit de l'extension du fichier, et PNG est utilise lorsque le nom de fichier n'a pas d'extension. Une option de resolution <b>-r</b> est acceptee pour compatibilite mais ne reechantillonne pas la sortie.

L'option de peripherique correspond au meme registre de formats que <b>saveas</b> :

| Option de peripherique | Format                      | Extension |
| ---------------------- | --------------------------- | --------- |
| -dpng                  | Portable Network Graphics   | .png      |
| -djpeg, -djpg          | JPEG                        | .jpg      |
| -dtiff, -dtiffn, -dtif | TIFF                        | .tif      |
| -dbmp                  | Bitmap                      | .bmp      |
| -dgif                  | Graphics Interchange Format | .gif      |
| -dwebp                 | WebP                        | .webp     |
| -dsvg                  | Scalable Vector Graphics    | .svg      |
| -dpdf                  | Portable Document Format    | .pdf      |

<b>Arriere-plan :</b> comme pour <b>saveas</b>, tant que la propriete <b>InvertHardcopy</b> de la figure vaut <b>'on'</b> (valeur par defaut), l'arriere-plan exporte est blanc quelle que soit la couleur <b>Color</b> de la figure a l'ecran.

## 💡 Exemples

Exporter la figure courante en PNG, PDF et SVG.

```matlab

f = figure('Visible', 'off');
plot(1:10, (1:10) .^ 2);
title('Donnees quadratiques');
print(f, [tempname(), '.png'], '-dpng');
print(f, [tempname(), '.pdf'], '-dpdf');
print(f, [tempname(), '.svg'], '-dsvg', '-r150');
close(f);

```

Deduire le format de l'extension du fichier.

```matlab

f = figure('Visible', 'off');
plot(1:5);
pngfile = [tempname(), '.png'];
print(pngfile);
assert(isfile(pngfile));
close(f);

```

## 🔗 Voir aussi

[saveas](../../graphics_io/saveas.md), [savefig](../../graphics/5_printing_saving/savefig.md), [gcf](../../graphics/2_graphics_objects/1_object_management/gcf.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
