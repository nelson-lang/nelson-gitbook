# permute

Permute array dimensions.

## 📝 Syntaxe

- R = permute(A, order)

## 📥 Argument d'entrée

- A - an array.
- order - Dimension order: row vector

## 📤 Argument de sortie

- R - result array rearranged with new dimension order.

## 📄 Description

<b>permute</b> permutes the dimensions of an array.

## 💡 Exemple

```matlab
x = [1 2 3; 4 5 6]
y = permute(x,[3 1 2])
```

## 🔗 Voir aussi

[ipermute](../elementary_functions/ipermute.md), [reshape](../elementary_functions/reshape.md), [transpose](../operators/transpose.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
