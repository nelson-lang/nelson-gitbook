# log2

dissect floating-point numbers into base 2 exponent and mantissa.

## 📝 Syntaxe

- R = log2(M)
- [F, E] = log2(M)

## 📥 Argument d'entrée

- M - a variable: a matrix

## 📤 Argument de sortie

- R - result of log2: computes the base 2 logarithm of the elements of X.
- F - Mantissa values that satisfy this equation: M= F.\*2.^E
- E - Exponent values that satisfy this equation: M= F.\*2.^E

## 📄 Description

<b>log2</b> dissects several numbers into the exponent and mantissa.

[F, E] = log2(M), any zeros in M produce F = 0 and E = 0.

Input values of Inf, -Inf, or NaN are returned unchanged in F with a corresponding exponent of E = 0.

## Fonction(s) utilisée(s)

std::frexp and std::logb C++ functions

## 💡 Exemple

```matlab
x = [1+i,-i;i,2i];
R = log2(x)
[F, E] = log2(x)
```

## 🔗 Voir aussi

[log](../elementary_functions/log.md), [log10](../elementary_functions/log10.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
