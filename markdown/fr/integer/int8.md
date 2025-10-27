# int8

Convertit en entier signé 8 bits.

## 📝 Syntaxe

- Y = int8(X)

## 📥 Argument d'entrée

- X - une matrice de double, single ou d'entiers.

## 📤 Argument de sortie

- Y - une matrice d'entiers 8 bits.

## 📄 Description

<b>int8</b> convertit la valeur en type entier 8 bits.

La valeur est arrondie à la valeur int8 la plus proche lors de la conversion. Une valeur supérieure ou inférieure à la plage pour la classe int8 est mappée vers l'une des extrémités de la plage [-128, 127].

## 💡 Exemple

```matlab
A = [1 -255 -120 127 128 215]
B = int8(A)
```

## 🔗 Voir aussi

[intmax](../integer/intmax.md), [intmin](../integer/intmax.md), [numeric types](../interpreter/numeric_types.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
