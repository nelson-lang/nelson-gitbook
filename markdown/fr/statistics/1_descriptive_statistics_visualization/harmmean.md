# harmmean

Moyenne harmonique d'un jeu de donnees.

## 📝 Syntaxe

- m = harmmean(X)
- m = harmmean(X, dim)
- m = harmmean(X, vecdim)
- m = harmmean(X, 'all')
- m = harmmean(..., nanflag)

## 📄 Description


<b>harmmean</b> calcule la moyenne harmonique de donnees numeriques. 

Par defaut, les valeurs <b>NaN</b> sont incluses. Utiliser <b>omitnan</b> pour les ignorer.

## 💡 Exemple



```matlab
X = reshape(1:30, [3 5 2]);
m = harmmean(X, [1 2])
```


## 🔗 Voir aussi

[geomean](../../statistics/1_descriptive_statistics_visualization/geomean.md), [mean](../../statistics/1_descriptive_statistics_visualization/mean.md), [median](../../statistics/1_descriptive_statistics_visualization/median.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
