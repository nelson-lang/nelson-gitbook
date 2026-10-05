# imopen

Ouvre une image par erosion puis dilatation.

## 📝 Syntaxe

- J = imopen(I, SE)

## 📥 Argument d'entrée

- I - Image binaire ou en niveaux de gris d'entree.
- SE - Structure d'element structurant ou voisinage logique.

## 📤 Argument de sortie

- J - Image ouverte.

## 📄 Description


Ouvre une image par erosion puis dilatation.

## 💡 Exemple

Ouvrir une image binaire

```matlab
BW=false(64,64); BW(20:44,20:44)=true; BW(8,8)=true;
J=imopen(BW,strel('disk',3));
figure; subplot(1,2,1); imagesc(BW); g=linspace(0,1,64)'; colormap([g g g]); title('Input');
subplot(1,2,2); imagesc(J); g=linspace(0,1,64)'; colormap([g g g]); title('Opened');
```
<img src="imopen_1.png" align="middle"/>


## 🔗 Voir aussi

[imclose](../../../image_processing/2_image_analysis/4_morphology/imclose.md), [imerode](../../../image_processing/2_image_analysis/4_morphology/imerode.md), [imdilate](../../../image_processing/2_image_analysis/4_morphology/imdilate.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
