# diff

Différences et dérivées approximatives.

## 📝 Syntaxe

- Y = diff(X)
- Y = diff(X, n)
- Y = diff(X, n, dim)

## 📥 Argument d'entrée

- X - vector or matrix (real or single)
- n - difference order: positive integer scalar or []
- dim - dimension: positive integer scalar

## 📤 Argument de sortie

- Y - difference array: vector or matrix.

## 📄 Description

Si <b>X</b> est un vecteur de longueur <b>n</b>, le résultat de <b>diff(X)</b> est un vecteur des premières différences <b>X(2) - X(1), ..., X(n) - X(n-1)</b>.

Si <b>X</b> est une matrice, le résultat de <b>diff(X)</b> est une matrice des différences de colonnes le long de la première dimension non-singleton.

## 💡 Exemple

```matlab
h = .01; x = 0:h:pi;
X = sin(x.^2);
R = diff(X)
```

## 🔗 Voir aussi

[sum](../linear_algebra/sum.md), [prod](../linear_algebra/prod.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
