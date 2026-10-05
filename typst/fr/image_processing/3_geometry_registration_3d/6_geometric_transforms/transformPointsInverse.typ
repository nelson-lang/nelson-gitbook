#import "../../nelson_help.typ": *

= transformPointsInverse <image_processing:3_geometry_registration_3d.6_geometric_transforms.transformPointsInverse>

Applique une transformation geometrique inverse a des points.

== Syntaxe

- #raw("[u, v] = transformPointsInverse(tform, x, y)");
- #raw("U = transformPointsInverse(tform, X)");
- #raw("[u, v, w] = transformPointsInverse(tform, x, y, z)");

== Argument d'entrée

/ tform: Structure de transformation geometrique creee par affine2d, affine3d ou projective2d.
/ x, y, z: Tableaux de coordonnees de meme taille. Fournir x et y pour une transformation 2-D, ou x, y et z pour une transformation 3-D.
/ X: Matrice de points compactee avec une colonne par dimension : N-by-2 en 2-D, N-by-3 en 3-D.

== Argument de sortie

/ u, v, w: Tableaux de coordonnees transformees, de meme taille que les entrees correspondantes.
/ U: Matrice compactee des points transformes, de meme taille que X.

== Description

Applique l'inverse de la transformation geometrique contenue dans #strong[tform]; a un ensemble de points, selon la convention vecteur ligne #strong[\[u ... 1\] \= \[x ... 1\] \* inv(tform.T)];. Pour une transformation projective, le resultat est normalise par sa coordonnee homogene.

 Les points peuvent etre fournis soit comme des tableaux de coordonnees distincts de meme taille, soit comme une seule matrice compactee avec une colonne par dimension. C'est l'operation inverse de #strong[transformPointsForward];.


== Exemple

Le direct puis l'inverse forment un aller-retour

``````matlab
tform = affine2d([cosd(30) sind(30) 0; -sind(30) cosd(30) 0; 0 0 1]);
[x, y] = transformPointsForward(tform, 1.5, -0.5);
[u, v] = transformPointsInverse(tform, x, y)
``````


== Voir aussi

#nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.transformPointsForward>)[transformPointsForward];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.affine2d>)[affine2d];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.affine3d>)[affine3d];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.projective2d>)[projective2d];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
