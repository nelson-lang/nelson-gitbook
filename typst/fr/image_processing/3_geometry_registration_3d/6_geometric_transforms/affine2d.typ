#import "../../nelson_help.typ": *

= affine2d <image_processing:3_geometry_registration_3d.6_geometric_transforms.affine2d>

Cree une structure de transformation affine 2-D.

== Syntaxe

- #raw("tform = affine2d()");
- #raw("tform = affine2d(T)");

== Argument d'entrée

/ T: Matrice affine 3-by-3 ou 2-by-3, finie et non singuliere, en convention vecteur ligne. La derniere colonne doit etre \[0; 0; 1\] apres expansion. Si elle est omise, la transformation identite est retournee.

== Argument de sortie

/ tform: Structure avec les champs Type, Dimensionality et T, utilisable avec imwarp.

== Description

Cree une structure de transformation affine 2-D contenant une matrice T en convention vecteur ligne. La structure peut etre passee a imwarp.


== Exemple

Translate une image avec une transformation affine

``````matlab
I=zeros(64,64); I(22:38,22:38)=1;
tform=affine2d([1 0 0;0 1 0;12 6 1]);
J=imwarp(I,tform,'Interpolation','nearest');
figure; subplot(1,2,1); imagesc(I); title('Input');
subplot(1,2,2); imagesc(J); title('Affine');
``````


#align(center)[#image("affine2d_1.png")]

== Voir aussi

#nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.projective2d>)[projective2d];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.affine3d>)[affine3d];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imwarp>)[imwarp];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.fitgeotrans>)[fitgeotrans];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
