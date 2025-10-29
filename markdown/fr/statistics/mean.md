# mean

Moyenne des éléments d'un tableau.

## 📝 Syntaxe

- R = mean(M)
- R = mean(M, d)
- R = mean(M, 'all')
- R = mean(M, d, t)
- R = mean(M, 'all', t)
- R = mean(M, d, t, f)
- R = mean(M, 'all', t, f)

## 📥 Argument d'entrée

- M - un tableau de double, single, entiers, ...
- d - dimension le long de laquelle opérer : scalaire entier positif.
- t - une chaîne : 'default', 'double' ou 'native'.
- f - une chaîne : 'includenan' ou 'omitnan'.

## 📤 Argument de sortie

- R - Moyenne des éléments du tableau.

## 📄 Description

<b>R = mean(M)</b> renvoie la moyenne (valeur moyenne) des éléments du tableau M.

La moyenne arithmétique d'un ensemble de valeurs
$$x_1, x_2, \ldots, x_n$$

est définie comme :
$$\bar{x} = \frac{1}{n} \sum_{i=1}^{n} x_i$$

où
$$n$$

est le nombre d'éléments.

## 💡 Exemple

```matlab
M = uint8([10:30:70;20:30:80;30:30:90]);
R = mean(M, 'native')
```

## 🔗 Voir aussi

[sum](../data_analysis/sum.md), [prod](../data_analysis/prod.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
