# idct

Transformation en cosinus discrete inverse.

## 📝 Syntaxe

- X = idct(Y)
- X = idct(Y, N)
- X = idct(Y, N, DIM)

## 📥 Argument d'entrée

- Y - coefficients de la transformation en cosinus discrete.
- N - longueur de transformation : Y est complete par des zeros ou tronque a la longueur N.
- DIM - dimension le long de laquelle operer.

## 📤 Argument de sortie

- X - signal reconstruit (inverse de la DCT-II orthonormale).

## 📄 Description


<b>idct</b> calcule l'inverse de la transformation en cosinus discrete de type II orthonormale le long de la premiere dimension non singleton par defaut. Pour les matrices, chaque colonne est transformee independamment.

## 💡 Exemple



```matlab

y = dct([1 2 3 4]);
x = idct(y);

```


## 🔗 Voir aussi

[dct](../../signal_processing/3_transforms_correlation_modeling/dct.md), [ifft](../../fftw/ifft.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
