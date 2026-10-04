# rgb2ycbcr

Convertit des valeurs couleur RGB en valeurs YCbCr.

## 📝 Syntaxe

- YCBCR = rgb2ycbcr(RGB)

## 📥 Argument d'entrée

- RGB - Image RGB m-by-n-by-3, ou colormap double c-by-3 avec des valeurs dans l'intervalle [0, 1].

## 📤 Argument de sortie

- YCBCR - Image ou colormap YCbCr. Les entrees uint8, uint16 et single conservent leur classe ; les autres entrees renvoient double.

## 📄 Description

Convertit des valeurs couleur RGB en valeurs YCbCr. Les entrees peuvent etre des images m-by-n-by-3 ou des colormaps double c-by-3 avec des valeurs dans l intervalle [0, 1].

## 💡 Exemple

Afficher la luminance apres conversion RGB vers YCbCr

```matlab
RGB=zeros(64,64,3);
[X,Y]=meshgrid(linspace(0,1,64),linspace(0,1,64));
RGB(:,:,1)=X; RGB(:,:,2)=Y; RGB(:,:,3)=0.5;
YCBCR=rgb2ycbcr(RGB);
figure; subplot(1,2,1); image(RGB); title('RGB');
subplot(1,2,2); imagesc(YCBCR(:,:,1)); g=linspace(0,1,64)'; colormap([g g g]); title('Y');
```

<img src="rgb2ycbcr_1.png" align="middle"/>

## 🔗 Voir aussi

[ycbcr2rgb](../../../image_processing/ycbcr2rgb.md), [rgb2hsv](../../../image_processing/rgb2hsv.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
