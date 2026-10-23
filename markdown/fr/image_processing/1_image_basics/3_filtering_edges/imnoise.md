# imnoise

Ajoute du bruit à une image.

## 📝 Syntaxe

- B = imnoise(A, 'gaussian')
- B = imnoise(A, 'gaussian', m, v)
- B = imnoise(A, 'salt & pepper', d)
- B = imnoise(A, 'speckle', v)
- B = imnoise(A, 'poisson')

## 📥 Argument d'entrée

- A - Image d'entrée (double, single, uint8, uint16 ou int16).
- type - Type de bruit : 'gaussian', 'salt & pepper', 'speckle' ou 'poisson'.
- m, v, d - Moyenne/variance (gaussian), variance (speckle) ou densité (salt & pepper).

## 📤 Argument de sortie

- B - Image bruitée, de même classe que A.

## 📄 Description


<b>imnoise</b> ajoute un bruit du type choisi à une image. L'image est traitée en double précision sur l'intervalle [0, 1] puis renvoyée dans la classe de <b>A</b>. Le bruit gaussien a pour moyenne <b>m</b> (défaut 0) et variance <b>v</b> (défaut 0.01) ; 'salt & pepper' affecte une fraction <b>d</b> (défaut 0.05) des pixels ; 'speckle' est un bruit multiplicatif <b>B = A + A.\*n</b> de variance <b>v</b> (défaut 0.04) ; 'poisson' tire des valeurs de loi de Poisson à partir des intensités de l'image.

## Fonction(s) utilisée(s)

randn, poissrnd

## 💡 Exemple



```matlab
A = 0.5 * ones(100, 100);
B = imnoise(A, 'gaussian', 0, 0.02);
```


## 🔗 Voir aussi

[imresize](../../../image_processing/3_geometry_registration_3d/6_geometric_transforms/imresize.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
