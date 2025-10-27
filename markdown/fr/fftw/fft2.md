# fft2

Transformée de Fourier 2-D rapide.

## 📝 Syntaxe

- Y = fft2(X)
- Y = fft2(X, m, n)

## 📥 Argument d'entrée

- X - tableau d'entrée.
- m - nombre de lignes pour la transformée.
- n - nombre de colonnes pour la transformée.

## 📤 Argument de sortie

- Y - a vector, matrix, N-D array: frequency domain representation.

## 📄 Description

<b>Y = fft2(X)</b> renvoie la transformée de Fourier bidimensionnelle de <b>X</b> en utilisant un algorithme FFT.

Les arguments optionnels <b>m</b> et <b>n</b> peuvent être utilisés pour préciser le nombre de lignes et de colonnes de <b>X</b> à utiliser.

Si l'un de ces arguments est plus grand que la taille de <b>X</b>, <b>X</b> est redimensionné et complété par des zéros.

Si <b>X</b> est un tableau multidimensionnel, chaque sous-matrice bidimensionnelle de <b>X</b> est traitée séparément.

## 💡 Exemple

```matlab
R = fft2(eye(5, 5), 2, 3)
```

## 🔗 Voir aussi

[fftn](../fftw/fftn.md), [fft](../fftw/fft.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
