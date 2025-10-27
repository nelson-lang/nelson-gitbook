# rem

Remainder after division.

## 📝 Syntaxe

- C = rem(A, B)

## 📥 Argument d'entrée

- A - a variable: dividend
- B - a variable: divisor

## 📤 Argument de sortie

- C - result of rem(A, B)

## 📄 Description

<b>C = rem(A, B)</b> computes the remainder of A and B, i.e : A - fix(A ./ B) .\* B.

This function manages also negative values.

mod(A, 0) = A , whereas rem(A, 0) = NaN.

mod(A, B) has the sign of B, while rem(A, B) has the sign of A.

mod and rem are equals if A and B have the same sign.

## 💡 Exemple

```matlab
 rem (-1, 3)
mod(-1, 3)
```

## 🔗 Voir aussi

[mod](../elementary_functions/rem.md), [floor](../elementary_functions/floor.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
