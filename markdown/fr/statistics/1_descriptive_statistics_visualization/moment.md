# moment

Moment centre d'un jeu de donnees.

## 📝 Syntaxe

- m = moment(X, order)
- m = moment(X, order, dim)
- m = moment(X, order, vecdim)
- m = moment(X, order, 'all')

## 📄 Description


<b>moment</b> calcule le moment centre d'ordre entier positif demande. 

Le moment centre du premier ordre vaut zero. Le moment centre du second ordre utilise un diviseur <b>n</b>.

## 💡 Exemple



```matlab
X = [1 2 4; 2 4 8; 3 8 13];
m = moment(X, 3)
```


## 🔗 Voir aussi

[skewness](../../statistics/1_descriptive_statistics_visualization/skewness.md), [kurtosis](../../statistics/1_descriptive_statistics_visualization/kurtosis.md), [var](../../statistics/1_descriptive_statistics_visualization/var.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
