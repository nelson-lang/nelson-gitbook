#import "nelson_help.typ": *

= imread <graphics_io:imread>

Lit une image à partir d'un fichier graphique.

== Syntaxe

- #raw("A = imread(filename)");
- #raw("[A, map] = imread(filename)");
- #raw("[A, map, transparency] = imread(filename)");

== Argument d'entrée

/ filename: a vecteur ligne de caractères ou chaîne scalaire : nom du fichier graphique.

== Argument de sortie

/ A: Données d'image : tableau.
/ map: Colormap : matrice m-by-3.
/ transparency: Information de transparence : matrice.

== Description

#strong[imread]; lit les données d'image du fichier donné et les charge dans une matrice.

 Le type du fichier est détecté à partir de sa signature. L'extension sert de solution de repli pour les formats textuels ou ambigus. Pour un GIF animé, la première image composée est renvoyée ; pour un TIFF, la première page est renvoyée.

 Une image indexée renvoie une matrice M-par-N #strong[uint8];, une palette K-par-3 de doubles dans \[0, 1\] et, si elle existe, une matrice de transparence M-par-N #strong[uint8];. Les images RGB et RGBA renvoient un tableau M-par-N-par-3 #strong[uint8]; ; la transparence RGBA est renvoyée séparément comme troisième sortie. Les images PNG, TIFF et PGM en niveaux de gris 16 bits renvoient une matrice M-par-N #strong[uint16];.

 

#table(
  columns: 2,
  [Format], [Accès], 
  [BMP\/DIB], [lecture], 
  [GIF], [lecture, première image composée], 
  [JPEG\/JFIF (JPG)], [lecture], 
  [TIFF], [lecture, première page], 
  [PCX], [lecture], 
  [PNG], [lecture], 
  [PBM], [lecture], 
  [PGM], [lecture], 
  [PPM], [lecture], 
  [WebP, TGA, PNM], [lecture], 
  [PSD, HDR\/RGBE, PIC], [lecture seule], 
)

== Exemples

``````matlab
f = figure();
filename = [tempname, '.webp'];
imwrite(rand(32, 32, 3), filename, 'Quality', 90);
img = imread(filename);
imagesc(img);
close(f);
``````


#align(center)[#image("imread.png")]
Transparence WebP, PNG indexé et niveaux de gris 16 bits.

``````matlab
source = rand(16, 16, 3);
alphaSource = rand(16, 16);
webpFile = [tempname, '.webp'];
png16File = [tempname, '.png'];
indexedFile = [tempname, '.png'];
imwrite(source, webpFile, 'Alpha', alphaSource);
imwrite(uint16(reshape(0:255, 16, 16) * 257), png16File);
indices = uint8([0 1; 1 0]);
palette = [1 0 0; 0 0 1];
imwrite(indices, palette, indexedFile);
[rgb, map, alpha] = imread(webpFile);
gray16 = imread(png16File);
[X, indexedMap, indexedAlpha] = imread(indexedFile);
``````


== Voir aussi

#nlink(<graphics:4_images.imagesc>)[imagesc];, #nlink(<graphics_io:imformats>)[imformats];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [1.13.0], [pcx, tiff formats added],
  [2.0.0], [ajout de WebP et de codecs déterministes sans Qt],
)

// Auteur: Allan CORNET
