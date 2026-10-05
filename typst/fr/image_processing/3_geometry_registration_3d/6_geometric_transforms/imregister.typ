#import "../../nelson_help.typ": *

= imregister <image_processing:3_geometry_registration_3d.6_geometric_transforms.imregister>

Recale une image mobile sur une image fixe.

== Syntaxe

- #raw("registered = imregister(moving, fixed, transformType, optimizer, metric)");
- #raw("registered = imregister(..., Name, Value)");

== Argument d'entrée

/ moving: Image mobile en niveaux de gris ou RGB.
/ fixed: Image fixe en niveaux de gris ou RGB, de meme taille que moving.
/ transformType: Type de transformation transmis a imregtform.
/ optimizer: Structure d'optimiseur.
/ metric: Structure de metrique ou nom de metrique.

== Argument de sortie

/ registered: Image mobile recalee, echantillonnee sur la grille de l'image fixe.

== Description

imregister estime une transformation 2-D avec imregtform et reechantillonne l'image mobile sur la grille de l'image fixe avec imwarp. Les methodes d'interpolation prises en charge sont nearest, linear, bilinear et cubic.


== Exemple

Recaler une image translatee

``````matlab
I=zeros(64,64); I(24:40,22:38)=1;
J=imtranslate(I,[7 -5],'nearest');
[optimizer,metric]=imregconfig('monomodal');
K=imregister(I,J,'translation',optimizer,metric,'Interpolation','nearest');
figure; subplot(1,3,1); imagesc(I); axis image; title('Mobile');
subplot(1,3,2); imagesc(J); axis image; title('Fixe');
subplot(1,3,3); imagesc(K); axis image; title('Recalee');
``````


#align(center)[#image("imregister_1.png")]

== Voir aussi

#nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imregconfig>)[imregconfig];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imregcorr>)[imregcorr];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imregtform>)[imregtform];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imwarp>)[imwarp];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
