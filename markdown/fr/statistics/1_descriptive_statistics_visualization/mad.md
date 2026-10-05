# mad

Ecart absolu moyen ou median.

## 📝 Syntaxe

- y = mad(X)
- y = mad(X, flag)
- y = mad(X, flag, dim)
- y = mad(X, flag, vecdim)
- y = mad(X, flag, 'all')

## 📄 Description


<b>mad</b> calcule l'ecart absolu moyen lorsque <b>flag</b> vaut 0, et l'ecart absolu median lorsque <b>flag</b> vaut 1. Les valeurs <b>NaN</b> sont omises. 

Les dimensions de calcul peuvent etre une dimension scalaire, un vecteur de dimensions ou <b>all</b>.

## 💡 Exemple



```matlab
X = [1 2 3; 4 NaN 6; 7 8 9];
y = mad(X)
```


## 🔗 Voir aussi

[mean](../../statistics/1_descriptive_statistics_visualization/mean.md), [median](../../statistics/1_descriptive_statistics_visualization/median.md), [iqr](../../statistics/1_descriptive_statistics_visualization/iqr.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
