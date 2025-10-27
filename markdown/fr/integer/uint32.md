# uint32

Convertit en entier non signé 32 bits.

## 📝 Syntaxe

- Y = uint32(X)

## 📥 Argument d'entrée

- X - une matrice de double, single ou d'entiers.

## 📤 Argument de sortie

- Y - une matrice d'entiers non signés 32 bits.

## 📄 Description

<b>uint32</b> convertit la valeur en type entier non signé 32 bits.

La valeur est arrondie à la valeur uint32 la plus proche lors de la conversion. Une valeur supérieure ou inférieure à la plage pour la classe uint32 est mappée vers l'une des extrémités de la plage [0, 4294967295].

## 💡 Exemple

```matlab
A = [1 -2147483649 -120 127 2147483647 2147483648]
B = uint32(A)
```

## 🔗 Voir aussi

[intmax](../integer/intmax.md), [intmin](../integer/intmax.md), [numeric types](../interpreter/numeric_types.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
