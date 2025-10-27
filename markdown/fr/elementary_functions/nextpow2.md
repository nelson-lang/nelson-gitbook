# nextpow2

Exponent of next higher power of 2

## 📝 Syntaxe

- R = nextpow2(M)

## 📥 Argument d'entrée

- M - a variable

## 📤 Argument de sortie

- R - result of nextpow2: next higher power of 2.

## 📄 Description

if <b>M</b> is a vector or a matrix <b>nextpow2(M)</b> applies element-wise.

If <b>M</b> is a scalar, <b>nextpow2(M)</b> returns the first <b>p</b> such that <b>2^p >= abs(M)</b>.

## 💡 Exemple

```matlab
R = nextpow2([10, Inf, 30, -Inf, 90, NaN])
M = uint32([1020 4000 32700]);
R = nextpow2(M)
```

## 🔗 Voir aussi

[pow2](../elementary_functions/pow2.md), [log2](../elementary_functions/log2.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
