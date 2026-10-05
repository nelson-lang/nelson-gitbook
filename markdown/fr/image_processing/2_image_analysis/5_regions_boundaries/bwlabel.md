# bwlabel

Etiquette les composants connexes d une image binaire.

## 📝 Syntaxe

- L = bwlabel(BW)
- L = bwlabel(BW, conn)
- [L, num] = bwlabel(...)

## 📥 Argument d'entrée

- BW - Image binaire d'entree. Les valeurs non nulles sont traitees comme true.
- conn - Connectivite transmise a bwconncomp.

## 📤 Argument de sortie

- L - Matrice d'etiquettes avec une etiquette positive par composante connexe.
- num - Nombre de composantes connexes.

## 📄 Description


Etiquette les composants connexes d une image binaire.

## 💡 Exemple

Etiqueter les composants connexes

```matlab
BW=false(64,64); BW(8:20,8:20)=true; BW(36:52,32:48)=true;
L=bwlabel(BW);
figure; imagesc(L); title('Labels');
```
<img src="bwlabel_1.png" align="middle"/>


## 🔗 Voir aussi

[bwconncomp](../../../image_processing/2_image_analysis/5_regions_boundaries/bwconncomp.md), [labelmatrix](../../../image_processing/2_image_analysis/5_regions_boundaries/labelmatrix.md), [regionprops](../../../image_processing/2_image_analysis/5_regions_boundaries/regionprops.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
