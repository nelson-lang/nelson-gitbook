# sign

Find the sign function of a number.

## 📝 Syntaxe

- R = sign(M)

## 📥 Argument d'entrée

- M - a variable

## 📤 Argument de sortie

- R - result of sign.

## 📄 Description

<b>sign</b> find the sign function of a number.

-1 if the corresponding element of M is less than 0.

0 if the corresponding element of M equals 0.

1 if the corresponding element of M is greater than 0.

If input argument is a complex number, <b>sign</b> computes <b>M ./ abs(M)</b>.

## 💡 Exemple

```matlab
V = [-1 0 15 NaN Inf];
sign(V)
```

## 🔗 Voir aussi

[conj](../elementary_functions/conj.md), [abs](../elementary_functions/abs.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
