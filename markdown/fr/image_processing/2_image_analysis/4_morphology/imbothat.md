# imbothat

Applique un filtrage chapeau bas.

## 📝 Syntaxe

- J = imbothat(I, SE)

## 📥 Argument d'entrée

- I - Image d'entree en niveaux de gris.
- SE - Structure d'element structurant ou voisinage logique.

## 📤 Argument de sortie

- J - Image filtree bottom-hat.

## 📄 Description


Applique un filtrage chapeau bas.

## 💡 Exemple

Appliquer un filtrage chapeau bas

```matlab
I=ones(64,64); I(20:44,20:44)=0.6; I(30:34,30:34)=0;
J=imbothat(I,strel('disk',5));
figure; subplot(1,2,1); imagesc(I); g=linspace(0,1,64)'; colormap([g g g]); title('Input');
subplot(1,2,2); imagesc(J); g=linspace(0,1,64)'; colormap([g g g]); title('Bottom-hat');
```
<img src="imbothat_1.png" align="middle"/>


## 🔗 Voir aussi

[imtophat](../../../image_processing/2_image_analysis/4_morphology/imtophat.md), [imclose](../../../image_processing/2_image_analysis/4_morphology/imclose.md), [strel](../../../image_processing/2_image_analysis/4_morphology/strel.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
