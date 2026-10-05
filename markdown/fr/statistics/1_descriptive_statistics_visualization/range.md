# range

Étendue des valeurs

## 📝 Syntaxe

- Y = range(X)
- Y = range(X, dim)

## 📥 Argument d'entrée

- X - tableau numérique ou logique.
- dim - dimension le long de laquelle opérer.

## 📤 Argument de sortie

- Y - différence entre les valeurs maximale et minimale.

## 📄 Description


<b>range</b> retourne la différence entre les valeurs maximale et minimale, max(X) - min(X). Pour une matrice, range opère sur chaque colonne ; range(X, dim) opère le long de la dimension dim. Les valeurs NaN sont ignorées.

## 💡 Exemple



```matlab
range([3 1 8 4])
```


## 🔗 Voir aussi

[iqr](../../statistics/1_descriptive_statistics_visualization/iqr.md), [std](../../statistics/1_descriptive_statistics_visualization/std.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
