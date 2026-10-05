# crosstab

Tableau croise.

## 📝 Syntaxe

- tbl = crosstab(x1, x2)
- tbl = crosstab(x1, ..., xn)
- tbl = crosstab(datatbl)
- tbl = crosstab(..., 'IncludeMissingGroups', tf)
- tbl = crosstab(..., 'OutputFormat', format)
- [tbl, chi2, p, labels] = crosstab(...)

## 📄 Description


<b>crosstab</b> compte les combinaisons de valeurs de variables de regroupement. 

Le format de sortie par defaut est une matrice numerique. Les formats pris en charge sont matrix, table et stacked-table. La statistique du chi-square et la p-value sont renvoyees pour les matrices de compte bidimensionnelles.

## 💡 Exemple



```matlab
x = [1 1 2 2];
y = {'a', 'b', 'a', 'b'};
[tbl, chi2, p, labels] = crosstab(x, y)
```


## 🔗 Voir aussi

[tabulate](../../statistics/1_descriptive_statistics_visualization/tabulate.md), [groupcounts](../../data_analysis/groupcounts.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
