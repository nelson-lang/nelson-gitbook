# imtophat

Applique un filtrage chapeau haut.

## 📝 Syntaxe

- J = imtophat(I, SE)

## 📥 Argument d'entrée

- I - Image d'entree en niveaux de gris.
- SE - Structure d'element structurant ou voisinage logique.

## 📤 Argument de sortie

- J - Image filtree top-hat.

## 📄 Description


Applique un filtrage chapeau haut.

## 💡 Exemple

Appliquer un filtrage chapeau haut

```matlab
I=zeros(64,64); I(20:44,20:44)=0.4; I(30:34,30:34)=1;
J=imtophat(I,strel('disk',5));
figure; subplot(1,2,1); imagesc(I); g=linspace(0,1,64)'; colormap([g g g]); title('Input');
subplot(1,2,2); imagesc(J); g=linspace(0,1,64)'; colormap([g g g]); title('Top-hat');
```
<img src="imtophat_1.png" align="middle"/>


## 🔗 Voir aussi

[imbothat](../../../image_processing/2_image_analysis/4_morphology/imbothat.md), [imopen](../../../image_processing/2_image_analysis/4_morphology/imopen.md), [strel](../../../image_processing/2_image_analysis/4_morphology/strel.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
