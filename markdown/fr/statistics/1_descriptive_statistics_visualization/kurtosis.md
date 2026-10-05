# kurtosis

Aplatissement d'un jeu de donnees.

## 📝 Syntaxe

- k = kurtosis(X)
- k = kurtosis(X, flag)
- k = kurtosis(X, flag, dim)
- k = kurtosis(X, flag, vecdim)
- k = kurtosis(X, flag, 'all')

## 📄 Description


<b>kurtosis</b> calcule l'aplatissement d'echantillon de donnees numeriques. Les valeurs <b>NaN</b> sont omises. 

<b>flag</b> vaut 1 par defaut. Mettre <b>flag</b> a 0 applique la correction de biais.

## 💡 Exemple



```matlab
X = [1 2 5; 2 4 8; 3 8 13];
k = kurtosis(X)
```


## 🔗 Voir aussi

[skewness](../../statistics/1_descriptive_statistics_visualization/skewness.md), [mean](../../statistics/1_descriptive_statistics_visualization/mean.md), [std](../../statistics/1_descriptive_statistics_visualization/std.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
