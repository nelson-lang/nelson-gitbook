# rotatefactors

Rotation de charges factorielles.

## 📝 Syntaxe

- B = rotatefactors(X)
- B = rotatefactors(X, Name, Value)
- [B, T] = rotatefactors(...)

## 📄 Description


<b>rotatefactors</b> applique une rotation aux colonnes de charges factorielles. Les methodes prises en charge incluent varimax, quartimax, equamax, parsimax, orthomax, promax, procrustes et pattern. 

Les arguments nom-valeur incluent Method, Normalize, RelTol, MaxIt, Coeff, Power, Target et Type.

## 💡 Exemple



```matlab
X = [0.8 0.2; 0.7 -0.1; 0.1 0.9; 0.2 0.8];
[B, T] = rotatefactors(X)
```


## 🔗 Voir aussi

[factoran](../../statistics/8_dimension_reduction_feature_selection/factoran.md), [pca](../../statistics/8_dimension_reduction_feature_selection/pca.md), [pcacov](../../statistics/8_dimension_reduction_feature_selection/pcacov.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
