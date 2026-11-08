# interpft

Interpolation 1-D par la méthode FFT.

## 📝 Syntaxe

- y = interpft(x, ny)
- y = interpft(x, ny, dim)

## 📥 Argument d'entrée

- x - un vecteur ou une matrice d'échantillons d'une fonction périodique.
- ny - le nombre d'échantillons de sortie (au moins le nombre d'entrée).
- dim - la dimension le long de laquelle interpoler.

## 📤 Argument de sortie

- y - les données rééchantillonnées.

## 📄 Description


<b>y = interpft(x, ny)</b> rééchantillonne <b>x</b> sur <b>ny</b> points équidistants à l'aide de la transformée de Fourier, en supposant <b>x</b> périodique.

## 💡 Exemple



```matlab
y = interpft([1 2 3 4], 8)
```


## 🔗 Voir aussi

[interp1](../special_functions/interp1.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
