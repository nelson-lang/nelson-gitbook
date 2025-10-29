# planerot

Rotation plane de Givens.

## 📝 Syntaxe

- [G, Y] = planerot(X)

## 📥 Argument d'entrée

- X - two-element column vector.

## 📤 Argument de sortie

- G - 2 by 2 orthogonal matrix.
- Y - Y = G \* X with Y(2) = 0.

## 📄 Description

<b>[G, Y] = planerot(X)</b> calcule la matrice de rotation de Givens pour le vecteur colonne à deux éléments <b>X</b>.

## 💡 Exemple

```matlab
X = [4; 5];
[G, X] = planerot(X)

```

## 🔗 Voir aussi

[norm](../linear_algebra/norm.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
