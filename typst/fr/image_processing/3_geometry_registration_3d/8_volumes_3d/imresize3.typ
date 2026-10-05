#import "../../nelson_help.typ": *

= imresize3 <image_processing:3_geometry_registration_3d.8_volumes_3d.imresize3>

Redimensionner un volume 3-D

== Syntaxe

- #raw("B = imresize3(V, scale)");
- #raw("B = imresize3(V, [numrows numcols numplanes])");
- #raw("B = imresize3(__, method)");
- #raw("B = imresize3(__, Name, Value)");

== Argument d'entrée

/ V: Volume d'entree, tableau 3-D reel, non sparse, numerique ou logique.
/ scale: Facteur de redimensionnement scalaire positif et fini applique aux lignes, colonnes et plans.
/ \[numrows numcols numplanes\]: Taille de sortie du volume. Les valeurs sont arrondies en dimensions entieres positives.
/ method: Methode d'interpolation : 'linear' par defaut, ou 'nearest'.
/ Name, Value: Les options prises en charge sont 'Method' et 'Antialiasing'. L'option antialiasing est analysee pour compatibilite.

== Argument de sortie

/ B: Volume redimensionne, renvoye avec la meme classe que V.

== Description

#strong[imresize3]; redimensionne des donnees d'image volumetriques par facteur scalaire ou vers une taille de sortie explicite a trois elements.

 La methode linear utilise une interpolation trilineaire separable. La methode nearest utilise l'echantillon le plus proche et preserve exactement les volumes logiques.


== Exemple

Redimensionner un volume synthetique et afficher une tranche centrale.

``````matlab
[X, Y, Z] = meshgrid(linspace(-1, 1, 48), linspace(-1, 1, 40), linspace(-1, 1, 20));
V = exp(-6 * (X .^ 2 + Y .^ 2 + Z .^ 2));
B = imresize3(V, [64 64 32], 'linear');
figure;
imshow(B(:, :, 16), []);
title('Resized central slice');
``````


#align(center)[#image("imresize3_1.png")]

== Voir aussi

#nlink(<image_processing:3_geometry_registration_3d.8_volumes_3d.imgaussfilt3>)[imgaussfilt3];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imresize>)[imresize];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
