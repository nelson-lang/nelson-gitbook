# poly

Polynôme à partir de racines ou polynôme caractéristique.

## 📝 Syntaxe

- p = poly(r)
- p = poly(A)

## 📥 Argument d'entrée

- r - vecteur : racines du polynôme
- A - matrice : matrice d'entrée

## 📤 Argument de sortie

- p - vecteur ligne : coefficients du polynôme

## 📄 Description

Si <b>A</b> est une matrice carrée, <b>p = poly(A)</b> calcule un vecteur ligne de n+1 éléments correspondant aux coefficients du polynôme caractéristique.

Si <b>r</b> est un vecteur, <b>p = poly(r)</b> calcule un vecteur ligne contenant les coefficients du polynôme dont les racines sont les éléments de <b>r</b>.

## 💡 Exemple

```matlab

A = [1    2    3;
4    5    6;
7    8    1];
p = poly(A)
```

## 🔗 Voir aussi

[conv](../data_analysis/conv.md), [roots](../polynomial_functions/roots.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
