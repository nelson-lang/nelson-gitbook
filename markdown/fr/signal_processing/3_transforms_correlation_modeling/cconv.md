# cconv

Convolution circulaire.

## 📝 Syntaxe

- Y = cconv(A, B)
- Y = cconv(A, B, N)

## 📥 Argument d'entrée

- A, B - vecteurs d'entree.
- N - longueur de convolution, entiere positive.

## 📤 Argument de sortie

- Y - resultat de convolution circulaire.

## 📄 Description

<b>cconv</b> calcule une convolution circulaire a l'aide de FFT.

## 💡 Exemple

```matlab

y = cconv([1 2], [1 1], 2);

```

## 🔗 Voir aussi

[conv](../../data_analysis/conv.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
