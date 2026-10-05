#import "../../nelson_help.typ": *

= projective2d <image_processing:3_geometry_registration_3d.6_geometric_transforms.projective2d>

Cree une structure de transformation projective 2-D.

== Syntaxe

- #raw("tform = projective2d()");
- #raw("tform = projective2d(T)");

== Argument d'entrée

/ T: Matrice de transformation projective 3-by-3, finie et non singuliere. Si elle est omise, la transformation identite est retournee.

== Argument de sortie

/ tform: Structure avec les champs Type, Dimensionality et T, utilisable avec imwarp.

== Description

Cree une structure de transformation projective 2-D contenant une matrice T 3-by-3 non singuliere. La structure peut etre passee a imwarp.


== Exemple

Transformer une image avec une transformation projective

``````matlab
I=zeros(64,64); I(18:42,18:42)=1;
tform=projective2d([1 0 0.002;0 1 0.001;8 4 1]);
J=imwarp(I,tform,'Interpolation','nearest');
figure; subplot(1,2,1); imagesc(I); title('Input');
subplot(1,2,2); imagesc(J); title('Projective');
``````


#align(center)[#image("projective2d_1.png")]

== Voir aussi

#nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.affine2d>)[affine2d];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imwarp>)[imwarp];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.fitgeotrans>)[fitgeotrans];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
