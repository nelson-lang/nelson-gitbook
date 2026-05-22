# cumsum

Somme cumulative des éléments d'un tableau.

## 📝 Syntaxe

- R = cumsum(M)
- R = cumsum(M, d)
- R = cumsum(M, d, direction)
- R = cumsum(M, d, direction, nanflag)

## 📥 Argument d'entrée

- M - un tableau de double, single, entiers, ...
- d - dimension le long de laquelle opérer : entier positif scalaire.
- direction - une chaîne : 'reverse', 'forward' (par défaut).
- nanflag - une chaîne : 'includenan' (par défaut) ou 'omitnan'.

## 📤 Argument de sortie

- R - Somme cumulative des éléments du tableau.

## 📄 Description

<b>R = cumsum(M)</b> renvoie la somme cumulative des éléments du tableau M.

## 💡 Exemple

```matlab
M = uint8([10:30:70;20:30:80;30:30:90]);
R = cumsum(M)
R = cumsum(M, 'reverse')
```

## 🔗 Voir aussi

[ndims](../elementary_functions/ndims.md), [sum](../data_analysis/sum.md), [cumprod](../data_analysis/cumprod.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
