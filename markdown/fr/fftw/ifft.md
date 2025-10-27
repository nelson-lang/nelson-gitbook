# ifft

Transformée de Fourier inverse rapide.

## 📝 Syntaxe

- Y = ifft(X)
- Y = ifft(X, n)
- Y = ifft(X, n, dim)

## 📥 Argument d'entrée

- X - un vecteur, une matrice ou un tableau N-D (double, single, integer, logical).
- n - longueur de la transformée : un scalaire entier non négatif ou [] (par défaut).
- dim - dimension : un scalaire entier positif.

## 📤 Argument de sortie

- Y - un vecteur, une matrice ou un tableau N-D : représentation dans le domaine fréquentiel.

## 📄 Description

<b>ifft(X)</b> calcule la transformée de Fourier discrète inverse de X en utilisant un algorithme FFT basé sur la bibliothèque FFTW.

## 💡 Exemple

```matlab
A = [1:10]
Y = fft(A)
R = ifft(Y)
```

## 🔗 Voir aussi

[fft](../fftw/fft.md), [fftw](../fftw/fftw.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
