# medfilt1

Filtre median unidimensionnel.

## 📝 Syntaxe

- Y = medfilt1(X)
- Y = medfilt1(X, N)
- Y = medfilt1(X, N, [], DIM)
- Y = medfilt1(..., NANFLAG, PADDING)

## 📥 Argument d'entrée

- X - signal d'entree.
- N - longueur de fenetre.
- DIM - dimension sur laquelle appliquer le filtre.
- NANFLAG - "includenan" ou "omitnan".
- PADDING - "zeropad" ou "truncate".

## 📤 Argument de sortie

- Y - signal filtre par mediane.

## 📄 Description

<b>medfilt1</b> remplace chaque echantillon par une mediane locale.

## 💡 Exemple

```matlab

y = medfilt1([1 9 2 3 4], 3);

```

## 🔗 Voir aussi

[hampel](../../signal_processing/hampel.md), [sgolayfilt](../../signal_processing/sgolayfilt.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
