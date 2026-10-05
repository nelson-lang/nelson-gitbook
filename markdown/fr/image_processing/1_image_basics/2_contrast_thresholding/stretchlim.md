# stretchlim

Determine les limites pour etirer le contraste.

## 📝 Syntaxe

- limits = stretchlim(I)
- limits = stretchlim(I, tol)

## 📥 Argument d'entrée

- I - Image d'entree en niveaux de gris ou RGB.
- tol - Tolerance scalaire ou vecteur de tolerance a deux elements dans l'intervalle [0, 1].

## 📤 Argument de sortie

- limits - Matrice 2-by-N des limites basse et haute du contraste, avec une colonne par canal.

## 📄 Description


Determine les limites pour etirer le contraste.

## 💡 Exemple

Etirer le contraste avec des limites calculees

```matlab
I=0.2+0.6*repmat(linspace(0,1,96),64,1);
limits=stretchlim(I);
J=imadjust(I,limits,[0;1]);
figure; subplot(1,2,1); imagesc(I); g=linspace(0,1,64)'; colormap([g g g]); title('Input');
subplot(1,2,2); imagesc(J); g=linspace(0,1,64)'; colormap([g g g]); title('Adjusted');
```
<img src="stretchlim_1.png" align="middle"/>


## 🔗 Voir aussi

[imadjust](../../../image_processing/1_image_basics/2_contrast_thresholding/imadjust.md), [imhist](../../../image_processing/1_image_basics/2_contrast_thresholding/imhist.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
