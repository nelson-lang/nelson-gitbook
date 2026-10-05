# ind2gray

Convertit une image indexee en niveaux de gris avec une palette.

## 📝 Syntaxe

- I = ind2gray(X, map)

## 📥 Argument d'entrée

- X - Image indexee.
- map - Colormap avec au moins trois colonnes.

## 📤 Argument de sortie

- I - Image en niveaux de gris double obtenue depuis l'image RGB indexee.

## 📄 Description


Convertit une image indexee en niveaux de gris avec une palette.

## 💡 Exemple

Convertir une image indexee en niveaux de gris

```matlab
X=repmat(uint8(0:63),64,1);
v=linspace(0,1,64)'; map=[v 1-v 0.5*ones(64,1)];
G=ind2gray(X,map);
figure; imagesc(G); g=linspace(0,1,64)'; colormap([g g g]); title('Indexed to gray');
```
<img src="ind2gray_1.png" align="middle"/>


## 🔗 Voir aussi

[ind2rgb](../../../image_processing/1_image_basics/1_image_types_color/ind2rgb.md), [rgb2gray](../../../image_processing/1_image_basics/1_image_types_color/rgb2gray.md), [im2gray](../../../image_processing/1_image_basics/1_image_types_color/im2gray.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
