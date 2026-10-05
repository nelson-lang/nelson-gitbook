#import "nelson_help.typ": *

= imwrite <graphics_io:imwrite>

Écrit une image dans un fichier graphique.

== Syntaxe

- #raw("imwrite(A, filename)");
- #raw("imwrite(A, map, filename)");
- #raw("imwrite(..., fmt)");
- #raw("imwrite(..., propertyName, propertyValue)");

== Argument d'entrée

/ A: matrice : 3D pour image couleur, 2D pour image en niveaux de gris ou indexée.
/ map: Colormap d'une image indexée : matrice m-by-3.
/ fmt: Format du fichier de sortie : 'bmp', 'png', 'jpg', 'gif', ...
/ filename: vecteur ligne de caractères ou chaîne scalaire : nom du fichier graphique.
/ propertyName: chaîne scalaire ou vecteur ligne de caractères.
/ propertyValue: une valeur.

== Description

#strong[imwrite(A, filename)]; écrit les données d'image #strong[A]; dans le fichier spécifié par #strong[filename];.

 Les formats inscriptibles sont PNG, JPEG\/JFIF, GIF, WebP, TIFF, BMP\/DIB, TGA, PBM, PGM, PPM\/PNM et PCX. Le format vient de #strong[fmt]; ou de l'extension du nom de fichier.

 #strong[A]; peut être logical, single, double, uint8 ou uint16. Un tableau bidimensionnel est en niveaux de gris, sauf si une palette K-par-3 dans \[0, 1\] est fournie ; une image en couleurs directes est M-par-N-par-3. La matrice alpha doit être exactement M-par-N. Les données flottantes et logiques sont normalisées sur 8 bits ; les données uint8 sont utilisées directement. Une image reste indexée lorsque chaque entrée de palette possède un alpha cohérent. Une entrée uint16 n'est acceptée que pour les images en niveaux de gris PNG, TIFF et PGM. Les autres formats signalent une erreur explicite.

 Le fichier n'est remplacé atomiquement qu'après un encodage réussi ; une erreur ne laisse donc pas de destination partiellement écrite.

 

 Noms de propriétés :

 

 #strong[Quality]; : qualité JPEG ou WebP dans \[0, 100\] (75 par défaut).

 #strong[Alpha]; : matrice M-par-N par pixel ; les flottants utilisent \[0, 1\], uint8 utilise \[0, 255\].

 #strong[Comment]; : texte enregistré lorsque le codec sélectionné prend cette métadonnée en charge.

 #strong[Author]; : auteur enregistré lorsque le codec sélectionné prend cette métadonnée en charge.

 PNG, JPEG et TIFF enregistrent #strong[Comment]; et #strong[Author]; ; GIF enregistre #strong[Comment];. Les autres codecs ignorent ces propriétés sans faire échouer l'écriture.

 

 Propriétés pour le format #strong[gif]; :

 

 #strong[WriteMode]; : #strong[overwrite]; (par défaut) ou #strong[append];.

 #strong[LoopCount]; : nombre de répétitions ; #strong[Inf]; répète indéfiniment.

 #strong[DelayTime]; : délai d'une image en secondes, dans \[0, 655\].


== Exemples

``````matlab
f = figure();
A = rand(69, 69);
A(:,:,2) = rand(69,69);
A(:,:,3) = rand(69,69);
imshow(A);
imwrite(A, [tempdir, '69x69-RGB.png']);
close(f);
``````

WebP avec alpha et PNG 16 bits.

``````matlab
rgb = rand(16, 16, 3);
alpha = rand(16, 16);
gray16 = uint16(reshape(0:255, 16, 16) * 257);
imwrite(rgb, [tempdir, 'image.webp'], 'Quality', 90, 'Alpha', alpha);
imwrite(gray16, [tempdir, 'image16.png']);
``````

Animation GIF avec toutes les options d'animation.

``````matlab
firstFrame = uint8(zeros(32, 32, 3));
firstFrame(:, :, 1) = 255;
secondFrame = uint8(zeros(32, 32, 3));
secondFrame(:, :, 3) = 255;
filename_gif = [tempname(), '.gif'];
imwrite(firstFrame, filename_gif, 'gif', 'WriteMode', 'overwrite', ...
        'LoopCount', Inf, 'DelayTime', 0.25);
imwrite(secondFrame, filename_gif, 'gif', 'WriteMode', 'append', ...
        'DelayTime', 0.50);
``````


#align(center)[#image("imwrite_gif.gif")]

== Voir aussi

#nlink(<graphics_io:imread>)[imread];, #nlink(<graphics:4_images.imshow>)[imshow];, #nlink(<graphics_io:imformats>)[imformats];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [1.13.0], [gif animation, pcx format added],
  [2.0.0], [ajout de WebP, des codecs portables et des niveaux de gris 16 bits],
)

// Auteur: Allan CORNET
