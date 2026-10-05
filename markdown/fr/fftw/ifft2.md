# ifft2

Transformee de Fourier inverse rapide 2-D.

## 📝 Syntaxe

- Y = ifft2(X)
- Y = ifft2(X, m, n)

## 📥 Argument d'entrée

- X - Tableau d'entree.
- m - Nombre de lignes de la transformee.
- n - Nombre de colonnes de la transformee.

## 📤 Argument de sortie

- Y - Resultat de la transformee inverse.

## 📄 Description


<b>ifft2</b> retourne la transformee de Fourier inverse bidimensionnelle de <b>X</b>.

## 💡 Exemple



```matlab
X = magic(3); Y = ifft2(fft2(X))
```


## 🔗 Voir aussi

[fft2](../fftw/fft2.md), [ifftn](../fftw/ifftn.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
