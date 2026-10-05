#import "../../nelson_help.typ": *

= image\_registration <image_processing:3_geometry_registration_3d.9a_image_registration.image_registration>

Vue d'ensemble du recalage d'images.

== Description

Le recalage d'images aligne une image mobile sur une image fixe en estimant une transformation geometrique puis en reechantillonnant l'image mobile sur la grille cible.

 Utilisez #strong[imregconfig]; pour creer les reglages de recalage, #strong[imregcorr]; pour les estimations par correlation de phase, #strong[imregtform]; pour estimer une transformation, #strong[imregister]; pour le recalage direct et #strong[imwarp]; pour appliquer explicitement les transformations.


== Exemple

Recaler une image translatee.

``````matlab
I = zeros(32, 32);
I(10:18, 12:20) = 1;
J = imtranslate(I, [3 -2]);
[optimizer, metric] = imregconfig('monomodal');
K = imregister(I, J, 'translation', optimizer, metric, 'Interpolation', 'nearest');
``````


== Voir aussi

#nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imregconfig>)[imregconfig];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imregcorr>)[imregcorr];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imregtform>)[imregtform];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imregister>)[imregister];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imwarp>)[imwarp];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
