#import "../../nelson_help.typ": *

= imopen <image_processing:2_image_analysis.4_morphology.imopen>

Ouvre une image par erosion puis dilatation.

== Syntaxe

- #raw("J = imopen(I, SE)");

== Argument d'entrée

/ I: Image binaire ou en niveaux de gris d'entree.
/ SE: Structure d'element structurant ou voisinage logique.

== Argument de sortie

/ J: Image ouverte.

== Description

Ouvre une image par erosion puis dilatation.


== Exemple

Ouvrir une image binaire

``````matlab
BW=false(64,64); BW(20:44,20:44)=true; BW(8,8)=true;
J=imopen(BW,strel('disk',3));
figure; subplot(1,2,1); imagesc(BW); g=linspace(0,1,64)'; colormap([g g g]); title('Input');
subplot(1,2,2); imagesc(J); g=linspace(0,1,64)'; colormap([g g g]); title('Opened');
``````


#align(center)[#image("imopen_1.png")]

== Voir aussi

#nlink(<image_processing:2_image_analysis.4_morphology.imclose>)[imclose];, #nlink(<image_processing:2_image_analysis.4_morphology.imerode>)[imerode];, #nlink(<image_processing:2_image_analysis.4_morphology.imdilate>)[imdilate];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
