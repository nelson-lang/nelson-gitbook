# factoran

Analyse factorielle.

## 📝 Syntaxe

- lambda = factoran(X, m)
- lambda = factoran(X, m, Name, Value)
- [lambda, psi, T, stats, F] = factoran(...)

## 📄 Description


<b>factoran</b> estime les charges factorielles pour une matrice de donnees reelles ou une matrice de covariance. 

Les arguments nom-valeur incluent Xtype, Rotate, Scores, Start, Options et Coeff. Les rotations prises en charge incluent varimax, quartimax, equamax, parsimax, orthomax et none.

## 💡 Exemple



```matlab
X = [1 2 3; 2 3 5; 4 5 8; 5 7 11; 7 8 13; 8 10 16];
[lambda, psi, T, stats, F] = factoran(X, 2)
```


## 🔗 Voir aussi

[pca](../../statistics/8_dimension_reduction_feature_selection/pca.md), [pcacov](../../statistics/8_dimension_reduction_feature_selection/pcacov.md), [ppca](../../statistics/8_dimension_reduction_feature_selection/ppca.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
