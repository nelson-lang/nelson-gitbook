# geomean

Moyenne geometrique d'un jeu de donnees.

## 📝 Syntaxe

- m = geomean(X)
- m = geomean(X, dim)
- m = geomean(X, vecdim)
- m = geomean(X, 'all')
- m = geomean(..., nanflag)

## 📄 Description


<b>geomean</b> calcule la moyenne geometrique de donnees numeriques. 

Par defaut, les valeurs <b>NaN</b> sont incluses. Utiliser <b>omitnan</b> pour les ignorer.

## 💡 Exemple



```matlab
X = reshape(1:30, [3 5 2]);
m = geomean(X, [1 2])
```


## 🔗 Voir aussi

[harmmean](../../statistics/1_descriptive_statistics_visualization/harmmean.md), [mean](../../statistics/1_descriptive_statistics_visualization/mean.md), [median](../../statistics/1_descriptive_statistics_visualization/median.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
