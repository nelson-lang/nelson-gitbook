# image\_registration

Vue d'ensemble du recalage d'images.

## 📄 Description


Le recalage d'images aligne une image mobile sur une image fixe en estimant une transformation geometrique puis en reechantillonnant l'image mobile sur la grille cible. 

Utilisez <b>imregconfig</b> pour creer les reglages de recalage, <b>imregcorr</b> pour les estimations par correlation de phase, <b>imregtform</b> pour estimer une transformation, <b>imregister</b> pour le recalage direct et <b>imwarp</b> pour appliquer explicitement les transformations.

## 💡 Exemple

Recaler une image translatee.

```matlab
I = zeros(32, 32);
I(10:18, 12:20) = 1;
J = imtranslate(I, [3 -2]);
[optimizer, metric] = imregconfig('monomodal');
K = imregister(I, J, 'translation', optimizer, metric, 'Interpolation', 'nearest');
```


## 🔗 Voir aussi

[imregconfig](../../../image_processing/3_geometry_registration_3d/6_geometric_transforms/imregconfig.md), [imregcorr](../../../image_processing/3_geometry_registration_3d/6_geometric_transforms/imregcorr.md), [imregtform](../../../image_processing/3_geometry_registration_3d/6_geometric_transforms/imregtform.md), [imregister](../../../image_processing/3_geometry_registration_3d/6_geometric_transforms/imregister.md), [imwarp](../../../image_processing/3_geometry_registration_3d/6_geometric_transforms/imwarp.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
