# dct

Transformation en cosinus discrete.

## 📝 Syntaxe

- Y = dct(X)
- Y = dct(X, N)
- Y = dct(X, N, DIM)

## 📥 Argument d'entrée

- X - signal ou matrice d'entree.
- N - longueur de transformation : X est complete par des zeros ou tronque a la longueur N.
- DIM - dimension le long de laquelle operer.

## 📤 Argument de sortie

- Y - coefficients de la transformation en cosinus discrete (DCT-II orthonormale).

## 📄 Description


<b>dct</b> calcule la transformation en cosinus discrete de type II orthonormale le long de la premiere dimension non singleton par defaut. Pour les matrices, chaque colonne est transformee independamment.

## 💡 Exemple



```matlab

y = dct([1 2 3 4]);
x = idct(y);

```


## 🔗 Voir aussi

[idct](../../signal_processing/3_transforms_correlation_modeling/idct.md), [fft](../../fftw/fft.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
