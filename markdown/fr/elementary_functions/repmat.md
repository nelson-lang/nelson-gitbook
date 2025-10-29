# repmat

Replicate and tile an array.

## 📝 Syntaxe

- R = repmat(A, m)
- R = repmat(A, m, n)
- R = repmat(A, m, n, p …)
- R = repmat(A, [m n])
- R = repmat(A, [m n p …])

## 📥 Argument d'entrée

- A - an array.
- m, n, p … - a value: integer

## 📤 Argument de sortie

- R - result array form by tiling.

## 📄 Description

<b>repmat</b> repeats matrix or N-D array.

## 💡 Exemples

```matlab
repmat(1:5, 2)
```

```matlab
repmat(1:5, [2 3])
```

```matlab
repmat(1:5, [2 3 4])
```

## 🔗 Voir aussi

[reshape](../elementary_functions/reshape.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
