# ifftshift

inverse de fftshift

## 📝 Syntaxe

- Y = ifftshift(X)
- Y = ifftshift(X, DIM)

## 📥 Argument d'entrée

- X - un vecteur, une matrice ou un tableau N-D (double, single, integer).
- DIM - axes sur lesquelles effectuer le décalage.

## 📤 Argument de sortie

- Y - tableau décalé.

## 📄 Description

<b>ifftshift(X)</b> calcule l'inverse de <b>fftshift</b>.

## 💡 Exemple

```matlab
M = [ 0.,  10.,  20.; 30.,  40., -40.; -30., -20., -10.]
ifftshift(M)
ifftshift(M, 1)
```

## 🔗 Voir aussi

[ifft](../fftw/ifft.md), [fftshift](../fftw/fftshift.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
