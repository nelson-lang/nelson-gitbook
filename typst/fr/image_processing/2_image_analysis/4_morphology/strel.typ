#import "../../nelson_help.typ": *

= strel <image_processing:2_image_analysis.4_morphology.strel>

Cree un element structurant.

== Syntaxe

- #raw("SE = strel(nhood)");
- #raw("SE = strel('arbitrary', nhood)");
- #raw("SE = strel(shape, size)");
- #raw("SE = strel('disk', radius, n)");
- #raw("SE = strel('diamond', radius)");
- #raw("SE = strel('octagon', radius)");
- #raw("SE = strel('line', len, deg)");
- #raw("SE = strel('cube', n)");
- #raw("SE = strel('cuboid', [m n p])");
- #raw("SE = strel('sphere', radius)");

== Argument d'entrée

/ nhood: Voisinage logique pour un element structurant arbitraire.
/ shape: Nom de forme : 'arbitrary', 'square', 'rectangle', 'line', 'disk', 'diamond', 'octagon', 'cube', 'cuboid' ou 'sphere'.
/ size: Scalaire positif ou vecteur de taille utilise par les formes square, rectangle, cube ou cuboid.
/ radius: Rayon entier non negatif utilise par les formes disk, diamond, octagon et sphere.
/ len: Longueur entiere positive utilisee par la forme line.
/ deg: Angle de ligne en degres.
/ n: Nombre optionnel de decomposition du disque, accepte comme 0, 4, 6 ou 8.

== Argument de sortie

/ SE: Structure d'element structurant avec les champs type et nhood.

== Description

Cree un element structurant plat. Les formes 2-D prises en charge incluent arbitrary, square, rectangle, line, disk, diamond et octagon. Les formes 3-D prises en charge incluent arbitrary, cube, cuboid et sphere. L argument optionnel n de disk peut valoir 0, 4, 6 ou 8; Nelson renvoie actuellement le voisinage disk exact. Le rayon octagon doit etre un multiple non negatif de 3.


== Exemples

Afficher un element structurant

``````matlab
SE=strel('disk',8);
figure; imagesc(SE.nhood); g=linspace(0,1,64)'; colormap([g g g]); title('Structuring element');
``````


#align(center)[#image("strel_1.png")]
Creer des voisinages diamond et arbitraire

``````matlab
D = strel('diamond', 1);
A = strel([0 1 0; 1 1 1; 0 1 0])
``````

Creer un voisinage sphere 3-D

``````matlab
SE = strel('sphere', 1);
sum(SE.nhood(:))
``````


== Voir aussi

#nlink(<image_processing:2_image_analysis.4_morphology.imdilate>)[imdilate];, #nlink(<image_processing:2_image_analysis.4_morphology.imerode>)[imerode];, #nlink(<image_processing:2_image_analysis.4_morphology.imopen>)[imopen];, #nlink(<image_processing:2_image_analysis.4_morphology.imclose>)[imclose];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
