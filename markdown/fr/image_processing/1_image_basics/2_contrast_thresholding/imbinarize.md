# imbinarize

Binarise une image avec un seuil.

## 📝 Syntaxe

- BW = imbinarize(I)
- BW = imbinarize(I, T)
- BW = imbinarize(I, 'global')
- BW = imbinarize(I, 'adaptive')
- BW = imbinarize(\_\_, 'Sensitivity', value)
- BW = imbinarize(\_\_, 'ForegroundPolarity', polarity)

## 📥 Argument d'entrée

- I - Image d'entree.
- T - Seuil numerique. Il peut etre scalaire ou de meme taille que I.
- method - Methode de binarisation : 'global' ou 'adaptive'.
- 'Sensitivity' - Sensibilite transmise au seuillage adaptatif.
- 'ForegroundPolarity' - Polarite du premier plan pour le seuillage adaptatif : 'bright' ou 'dark'.

## 📤 Argument de sortie

- BW - Image binaire logique.

## 📄 Description


Binarise une image avec un seuil. La methode globale utilise graythresh quand aucun seuil n est fourni. Un seuil numerique peut etre scalaire ou de meme taille que l entree. La methode adaptive utilise adaptthresh et prend en charge une polarite de premier plan bright ou dark.

## 💡 Exemples

Binariser une image en niveaux de gris avec un seuil global

```matlab
I=[0 0.25 0.75 1; 0.1 0.4 0.6 0.9];
BW=imbinarize(I,0.5);
figure; subplot(1,2,1); imagesc(I); g=linspace(0,1,64)'; colormap([g g g]); title('Input');
subplot(1,2,2); imagesc(BW); g=linspace(0,1,64)'; colormap([g g g]); title('Binary');
```
<img src="imbinarize_1.png" align="middle"/>
Binariser avec un seuil adaptatif

```matlab
I=[0.1 0.1 0.1; 0.1 0.9 0.1; 0.1 0.1 0.1];
BW=imbinarize(I,'adaptive','Sensitivity',0.4)
```


## 🔗 Voir aussi

[graythresh](../../../image_processing/1_image_basics/2_contrast_thresholding/graythresh.md), [adaptthresh](../../../image_processing/1_image_basics/2_contrast_thresholding/adaptthresh.md), [imcomplement](../../../image_processing/1_image_basics/2_contrast_thresholding/imcomplement.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
