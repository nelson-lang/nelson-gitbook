# imcrop

Rogne une image avec un rectangle.

## 📝 Syntaxe

- J = imcrop(I)
- J = imcrop(I, rect)

## 📥 Argument d'entrée

- I - Image d'entree en niveaux de gris ou RGB.
- rect - Rectangle de rognage [x y width height] avec largeur et hauteur non negatives.

## 📤 Argument de sortie

- J - Image rognee. Sans rect, l'image d'entree est renvoyee inchangee.

## 📄 Description


Rogne une image avec un rectangle [x y width height]. Le rectangle doit etre un vecteur numerique a 4 elements avec une largeur et une hauteur non negatives.

## 💡 Exemple

Rogner une image

```matlab
I=peaks(64);
J=imcrop(I,[16 16 31 31]);
figure; subplot(1,2,1); imagesc(I); title('Input');
subplot(1,2,2); imagesc(J); title('Crop');
```
<img src="imcrop_1.png" align="middle"/>


## 🔗 Voir aussi

[imresize](../../../image_processing/3_geometry_registration_3d/6_geometric_transforms/imresize.md), [imrotate](../../../image_processing/3_geometry_registration_3d/6_geometric_transforms/imrotate.md), [imtranslate](../../../image_processing/3_geometry_registration_3d/6_geometric_transforms/imtranslate.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
