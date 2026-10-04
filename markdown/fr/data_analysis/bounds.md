# bounds

Plus petits et plus grands elements d'un tableau.

## 📝 Syntaxe

- [smallest, largest] = bounds(A)
- [smallest, largest] = bounds(A, d)
- [smallest, largest] = bounds(A, flag)

## 📥 Argument d'entrée

- A - input array.
- d - dimension to operate along: positive integer scalar.
- flag - optional argument forwarded to min and max.

## 📤 Argument de sortie

- smallest - Smallest values.
- largest - Largest values.

## 📄 Description

<b>bounds</b> renvoie les plus petits et les plus grands elements de A selon la dimension choisie.

## 💡 Exemple

```matlab
A = [3 7 2; 9 1 5];
[s, l] = bounds(A)
```

## 🔗 Voir aussi

[min](../data_analysis/min.md), [max](../data_analysis/max.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
