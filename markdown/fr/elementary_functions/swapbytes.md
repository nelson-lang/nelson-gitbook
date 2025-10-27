# swapbytes

Swap byte ordering.

## 📝 Syntaxe

- R = swapbytes(M)

## 📥 Argument d'entrée

- M - a variable: integer, single or double real full matrix.

## 📤 Argument de sortie

- R - result of swapbytes: reversed byte order of M.

## 📄 Description

<b>swapbytes</b> Swap byte ordering.

endian (little - big) converter

## 💡 Exemple

```matlab
X = uint16([65535 128; 1 0])
Y = swapbytes(X)
```

## 🔗 Voir aussi

[num2bin](../elementary_functions/num2bin.md), [bin2num](../elementary_functions/bin2num.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
