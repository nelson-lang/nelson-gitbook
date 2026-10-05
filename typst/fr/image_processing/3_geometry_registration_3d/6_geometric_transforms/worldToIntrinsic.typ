#import "../../nelson_help.typ": *

= worldToIntrinsic <image_processing:3_geometry_registration_3d.6_geometric_transforms.worldToIntrinsic>

Convertit des coordonnees monde en coordonnees intrinseques.

== Syntaxe

- #raw("[xIntrinsic, yIntrinsic] = worldToIntrinsic(R, xWorld, yWorld)");
- #raw("[xIntrinsic, yIntrinsic, zIntrinsic] = worldToIntrinsic(R, xWorld, yWorld, zWorld)");

== Argument d'entrée

/ R: Structure de reference spatiale 2-D ou 3-D creee par imref2d ou imref3d.
/ xWorld, yWorld, zWorld: Coordonnees monde. La coordonnee Z est utilisee uniquement avec les references 3-D.

== Argument de sortie

/ xIntrinsic, yIntrinsic, zIntrinsic: Coordonnees intrinseques correspondant aux coordonnees monde.

== Description

Convertit les coordonnees monde en coordonnees intrinseques. Les coordonnees hors limites sont extrapolees.


== Exemple

Convertir des coordonnees monde 2-D

``````matlab
R = imref2d([2 3], 2, 3);
[xIntrinsic, yIntrinsic] = worldToIntrinsic(R, [2 6], [3 6])
``````


== Voir aussi

#nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.intrinsicToWorld>)[intrinsicToWorld];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.worldToSubscript>)[worldToSubscript];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
