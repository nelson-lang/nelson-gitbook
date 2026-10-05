#import "../../nelson_help.typ": *

= affine3d <image_processing:3_geometry_registration_3d.6_geometric_transforms.affine3d>

Cree une structure de transformation affine 3-D.

== Syntaxe

- #raw("tform = affine3d()");
- #raw("tform = affine3d(T)");

== Argument d'entrée

/ T: Matrice de transformation affine 4-by-4 ou 3-by-4, finie et non singuliere, en convention vecteur ligne. Si elle est omise, la transformation identite est retournee.

== Argument de sortie

/ tform: Structure avec les champs Type, Dimensionality et T, utilisable avec imwarp pour les volumes 3-D.

== Description

Cree une structure de transformation affine 3-D contenant une matrice T en convention vecteur ligne. Les translations sont stockees dans la derniere ligne.


== Exemple

Creer une translation 3-D

``````matlab
tform = affine3d([1 0 0 0; 0 1 0 0; 0 0 1 0; 4 5 6 1]);
tform.T
``````


== Voir aussi

#nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.affine2d>)[affine2d];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imref3d>)[imref3d];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
