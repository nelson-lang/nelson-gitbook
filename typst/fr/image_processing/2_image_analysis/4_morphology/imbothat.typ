#import "../../nelson_help.typ": *

= imbothat <image_processing:2_image_analysis.4_morphology.imbothat>

Applique un filtrage chapeau bas.

== Syntaxe

- #raw("J = imbothat(I, SE)");

== Argument d'entrée

/ I: Image d'entree en niveaux de gris.
/ SE: Structure d'element structurant ou voisinage logique.

== Argument de sortie

/ J: Image filtree bottom-hat.

== Description

Applique un filtrage chapeau bas.


== Exemple

Appliquer un filtrage chapeau bas

``````matlab
I=ones(64,64); I(20:44,20:44)=0.6; I(30:34,30:34)=0;
J=imbothat(I,strel('disk',5));
figure; subplot(1,2,1); imagesc(I); g=linspace(0,1,64)'; colormap([g g g]); title('Input');
subplot(1,2,2); imagesc(J); g=linspace(0,1,64)'; colormap([g g g]); title('Bottom-hat');
``````


#align(center)[#image("imbothat_1.png")]

== Voir aussi

#nlink(<image_processing:2_image_analysis.4_morphology.imtophat>)[imtophat];, #nlink(<image_processing:2_image_analysis.4_morphology.imclose>)[imclose];, #nlink(<image_processing:2_image_analysis.4_morphology.strel>)[strel];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
