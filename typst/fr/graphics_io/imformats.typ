#import "nelson_help.typ": *

= imformats <graphics_io:imformats>

Gère les formats d'image pris en charge.

== Syntaxe

- #raw("imformats ()");
- #raw("formats = imformats()");
- #raw("format = imformats(ext)");

== Argument d'entrée

/ ext: extension du format de fichier : vecteur de caractères ou chaîne scalaire.

== Argument de sortie

/ formats: tableau de structures : formats d'image pris en charge.
/ format: structure : format d'image pris en charge.

== Description

#strong[imformats]; renvoie la liste des formats d'image pris en charge.

 #strong[formats \= imformats()]; renvoie la liste des formats d'image pris en charge sous la forme d'un tableau de structures.

 #strong[format \= imformats(ext)]; renvoie la structure du format d'image correspondant à l'extension#strong[ext];.

 Chaque élément du tableau de structures contient les champs :

 

- #strong[ext]; : extension du format de fichier
- #strong[isa]; : champ réservé, vide car la détection de signature est centralisée
- #strong[info]; : champ réservé, vide car les capacités sont dans cette structure
- #strong[description]; : description du format
- #strong[read]; : capacité #strong[imread];, ou vide si le format n'est pas lisible
- #strong[write]; : capacité #strong[imwrite];, ou vide pour un format en lecture seule
- #strong[alpha]; : scalaire booléen indiquant si le format supporte la transparence
- #strong[multipage]; : écriture multi-image exposée ; seul GIF vaut vrai Le registre est déterministe et ne dépend pas des greffons d'image du bureau. Un champ #strong[read]; ou #strong[write]; vide indique que l'opération n'est pas prise en charge. Dans le tableau renvoyé sans argument, ces champs contiennent le nom de la fonction ; une requête sur un format unique renvoie le function handle équivalent.

 

#table(
  columns: 6,
  [Extension canonique], [Alias], [Lecture], [Écriture], [Alpha], [Multipage], 
  [png], [-], [oui], [oui], [oui], [non], 
  [jpg], [jpeg, jfif], [oui], [oui], [non], [non], 
  [gif], [-], [oui], [oui], [oui], [oui], 
  [webp], [-], [oui], [oui], [oui], [non], 
  [tiff], [tif], [oui], [oui], [oui], [non], 
  [bmp], [dib], [oui], [oui], [oui], [non], 
  [tga], [-], [oui], [oui], [oui], [non], 
  [pbm], [-], [oui], [oui], [non], [non], 
  [pgm], [-], [oui], [oui], [non], [non], 
  [ppm], [-], [oui], [oui], [non], [non], 
  [pnm], [-], [oui], [oui], [non], [non], 
  [pcx], [-], [oui], [oui], [non], [non], 
  [psd], [-], [oui], [non], [oui], [non], 
  [hdr], [rgbe], [oui], [non], [non], [non], 
  [pic], [-], [oui], [non], [oui], [non], 
)

== Exemples

``````matlab
imformats()
``````

Interroger un format avec un alias.

``````matlab
imformats('jpeg')
imformats('webp')
``````

Filtrer les formats lisibles et inscriptibles.

``````matlab
formats = imformats();
readable = {};
writable = {};
for k = 1:length(formats)
    if ~isempty(formats(k).read), readable{end + 1} = formats(k).ext; end
    if ~isempty(formats(k).write), writable{end + 1} = formats(k).ext; end
end
readable
writable
``````


== Voir aussi

#nlink(<graphics_io:imwrite>)[imwrite];, #nlink(<graphics_io:imread>)[imread];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.13.0], [version initiale],
  [2.0.0], [registre de formats multiplateforme déterministe],
)

// Auteur: Allan CORNET
