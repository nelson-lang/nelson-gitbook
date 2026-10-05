# imerode

Erode une image ou un volume binaire ou en niveaux de gris.

## 📝 Syntaxe

- J = imerode(I, SE)

## 📥 Argument d'entrée

- I - Image binaire ou en niveaux de gris d'entree, ou volume 3-D.
- SE - Structure d'element structurant ou voisinage logique.

## 📤 Argument de sortie

- J - Image ou volume erode.

## 📄 Description


Erode une image binaire ou en niveaux de gris. Avec un element structurant 3-D, imerode erode un volume 3-D.

## 💡 Exemple

Eroder une image binaire

```matlab
BW=false(64,64); BW(20:44,20:44)=true;
J=imerode(BW,strel('disk',5));
figure; subplot(1,2,1); imagesc(BW); g=linspace(0,1,64)'; colormap([g g g]); title('Input');
subplot(1,2,2); imagesc(J); g=linspace(0,1,64)'; colormap([g g g]); title('Eroded');
```
<img src="imerode_1.png" align="middle"/>


## 🔗 Voir aussi

[imdilate](../../../image_processing/2_image_analysis/4_morphology/imdilate.md), [imopen](../../../image_processing/2_image_analysis/4_morphology/imopen.md), [imclose](../../../image_processing/2_image_analysis/4_morphology/imclose.md), [strel](../../../image_processing/2_image_analysis/4_morphology/strel.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
