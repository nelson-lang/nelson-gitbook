# toeplitz

Matrice de Toeplitz

## 📝 Syntaxe

- T = toeplitz(c, r)
- T = toeplitz(r)

## 📥 Argument d'entrée

- c - un scalaire ou un vecteur : colonne de la matrice de Toeplitz.
- r - un scalaire ou un vecteur : ligne de la matrice de Toeplitz.

## 📤 Argument de sortie

- T - matrice de Toeplitz.

## 📄 Description

<b>T = toeplitz(c, r)</b> renvoie la matrice de Toeplitz dont la première ligne est<b>r</b> et la première colonne est <b>c</b>.

<b>T = toeplitz(c)</b> renvoie la matrice de Toeplitz symétrique.

## 📚 Bibliographie

https://en.wikipedia.org/wiki/Toeplitz_matrix

## 💡 Exemple

```matlab
T = toeplitz(1:5, 1:2:7)
```

## 🔗 Voir aussi

[hankel](../../elementary_functions/hankel.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
