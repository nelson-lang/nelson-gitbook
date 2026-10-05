#import "../../nelson_help.typ": *

= fitgeotrans <image_processing:3_geometry_registration_3d.6_geometric_transforms.fitgeotrans>

Ajuste une transformation geometrique 2-D depuis des points de controle.

== Syntaxe

- #raw("tform = fitgeotrans(movingPoints, fixedPoints, transformType)");

== Argument d'entrée

/ movingPoints: Tableau numerique N-by-2 de points de controle dans l'image mobile.
/ fixedPoints: Tableau numerique N-by-2 de points de controle correspondants dans l'image fixe.
/ transformType: Type de transformation : 'affine' ou 'projective'.

== Argument de sortie

/ tform: Structure de transformation affine2d ou projective2d ajustee.

== Description

Ajuste des transformations 2-D affine ou projective depuis deux tableaux de points de controle N-by-2 correspondants. Les types pris en charge sont affine et projective.


== Exemple

Ajuster une translation depuis trois points de controle

``````matlab
moving=[0 0;1 0;0 1];
fixed=[8 5;9 5;8 6];
tform=fitgeotrans(moving,fixed,'affine');
I=zeros(32,32); I(8:14,8:14)=1;
J=imwarp(I,tform,'Interpolation','nearest');
figure; subplot(1,2,1); imagesc(I); title('Input');
subplot(1,2,2); imagesc(J); title('Fitted');
``````


#align(center)[#image("fitgeotrans_1.png")]

== Voir aussi

#nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.affine2d>)[affine2d];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.projective2d>)[projective2d];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imwarp>)[imwarp];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
