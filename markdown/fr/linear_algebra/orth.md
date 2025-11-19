# orth

Base orthonormée de l'espace image d'une matrice.

## 📝 Syntaxe

- O = orth(A)
- O = orth(A, tol)

## 📥 Argument d'entrée

- A - matrice d'entrée
- tol - une valeur numérique : scalaire, tolérance sur la valeur singulière

## 📤 Argument de sortie

- O - nombre réel ou complexe (double ou simple précision).

## 📄 Description

<b>O = orth(A)</b> retourne une base orthonormée de l'image (range) de<b>A</b>.

## 💡 Exemple

```matlab
M = [10 -20 40; -50 20 0; 10 0 30]
O = orth(M)

```

## 🔗 Voir aussi

[svd](../linear_algebra/svd.md), [rank](../linear_algebra/rank.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
