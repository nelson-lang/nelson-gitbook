# skewness

Asymetrie d'un jeu de donnees.

## 📝 Syntaxe

- y = skewness(X)
- y = skewness(X, flag)
- y = skewness(X, flag, dim)
- y = skewness(X, flag, vecdim)
- y = skewness(X, flag, 'all')

## 📄 Description

<b>skewness</b> calcule l'asymetrie d'echantillon de donnees numeriques. Les valeurs <b>NaN</b> sont omises.

<b>flag</b> vaut 1 par defaut. Mettre <b>flag</b> a 0 applique la correction de biais.

## 💡 Exemple

```matlab
X = [1 2 5; 2 4 8; 3 8 13];
y = skewness(X)
```

## 🔗 Voir aussi

[kurtosis](../../statistics/kurtosis.md), [mean](../../statistics/mean.md), [std](../../statistics/std.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
