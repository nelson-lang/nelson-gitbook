#import "../../nelson_help.typ": *

= transformPointsForward <image_processing:3_geometry_registration_3d.6_geometric_transforms.transformPointsForward>

Applique une transformation geometrique directe a des points.

== Syntaxe

- #raw("[x, y] = transformPointsForward(tform, u, v)");
- #raw("X = transformPointsForward(tform, U)");
- #raw("[x, y, z] = transformPointsForward(tform, u, v, w)");

== Argument d'entrée

/ tform: Structure de transformation geometrique creee par affine2d, affine3d ou projective2d.
/ u, v, w: Tableaux de coordonnees de meme taille. Fournir u et v pour une transformation 2-D, ou u, v et w pour une transformation 3-D.
/ U: Matrice de points compactee avec une colonne par dimension : N-by-2 en 2-D, N-by-3 en 3-D.

== Argument de sortie

/ x, y, z: Tableaux de coordonnees transformees, de meme taille que les entrees correspondantes.
/ X: Matrice compactee des points transformes, de meme taille que U.

== Description

Applique la transformation geometrique directe contenue dans #strong[tform]; a un ensemble de points, selon la convention vecteur ligne #strong[\[x ... 1\] \= \[u ... 1\] \* tform.T];. Pour une transformation projective, le resultat est normalise par sa coordonnee homogene.

 Les points peuvent etre fournis soit comme des tableaux de coordonnees distincts de meme taille, soit comme une seule matrice compactee avec une colonne par dimension.


== Exemple

Rotation de points de 30 degres

``````matlab
tform = affine2d([cosd(30) sind(30) 0; -sind(30) cosd(30) 0; 0 0 1]);
[x, y] = transformPointsForward(tform, 1, 0)
``````


== Voir aussi

#nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.transformPointsInverse>)[transformPointsInverse];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.affine2d>)[affine2d];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.affine3d>)[affine3d];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.projective2d>)[projective2d];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
