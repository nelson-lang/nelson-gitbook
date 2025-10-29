# int64

Convertit en entier signé 64 bits.

## 📝 Syntaxe

- Y = int64(X)

## 📥 Argument d'entrée

- X - une matrice de double, single ou d'entiers.

## 📤 Argument de sortie

- Y - une matrice d'entiers 64 bits.

## 📄 Description

<b>int64</b> convertit la valeur en type entier 64 bits.

La valeur est arrondie à la valeur int64 la plus proche lors de la conversion. Une valeur qui dépasse la plage autorisée pour la classe int64 est mappée vers l'une des extrémités de la plage [-9223372036854775808,9223372036854775807].

Lorsque vous créez un tableau numérique contenant de grands entiers dans Nelson, surtout lorsqu'ils dépassent la précision maximale représentable par double (plus grands que flintmax), Nelson stocke par défaut ces valeurs sous forme de nombres à virgule flottante en double précision.

Cette représentation par défaut peut entraîner une perte de précision, car les nombres à virgule flottante ont une précision limitée.

Pour conserver la précision complète de ces grandes valeurs entières, il est conseillé de convertir explicitement chaque élément scalaire du tableau en type int64 ou uint64 en utilisant la notation i64 ou u64 (voir exemple).

De cette manière, vous vous assurez que les valeurs sont stockées avec leur précision complète en tant qu'entiers signés ou non signés 64 bits, plutôt qu'en tant que nombres à virgule flottante double précision.

## 💡 Exemple

```matlab
A = [1 12 -120 127 -9e24 9e23]
B = int64(A)
R1 = int64([72057594035891654 81997179153022975])
R2 = [72057594035891654i64 81997179153022975i64]
```

## 🔗 Voir aussi

[intmax](../integer/intmax.md), [intmin](../integer/intmax.md), [numeric types](../interpreter/numeric_types.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
