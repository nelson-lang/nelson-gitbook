# labelmatrix

Cree une matrice d etiquettes depuis des composants connexes.

## 📝 Syntaxe

- L = labelmatrix(CC)

## 📥 Argument d'entrée

- CC - Structure de composantes connexes renvoyee par bwconncomp.

## 📤 Argument de sortie

- L - Matrice d'etiquettes avec une etiquette positive par composante.

## 📄 Description

Cree une matrice d etiquettes depuis des composants connexes.

## 💡 Exemple

Afficher les etiquettes de composants

```matlab
BW=false(64,64); BW(8:20,8:20)=true; BW(36:52,32:48)=true;
CC=bwconncomp(BW);
L=labelmatrix(CC);
figure; imagesc(L); title('Label matrix');
```

<img src="labelmatrix_1.png" align="middle"/>

## 🔗 Voir aussi

[bwconncomp](../../../image_processing/bwconncomp.md), [bwlabel](../../../image_processing/bwlabel.md), [regionprops](../../../image_processing/regionprops.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
