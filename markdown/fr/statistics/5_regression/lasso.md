# lasso

Regularisation lasso et elastic net pour modeles lineaires.

## 📝 Syntaxe

- B = lasso(X, y)
- B = lasso(X, y, Name, Value)
- [B, FitInfo] = lasso(...)

## 📄 Description

<b>lasso</b> ajuste des modeles lineaires regularises L1 et elastic-net par descente de coordonnees.

Les options nom-valeur prises en charge sont <b>Alpha</b>, <b>Lambda</b>, <b>LambdaRatio</b>, <b>NumLambda</b>, <b>Standardize</b>, <b>Intercept</b>, <b>MaxIter</b>, <b>RelTol</b> et <b>Weights</b>.

## 💡 Exemple

```matlab
X = randn(100, 5);
y = X * [0; 2; 0; -3; 0] + 0.1 * randn(100, 1);
[B, FitInfo] = lasso(X, y, 'NumLambda', 10)
```

## 🔗 Voir aussi

[ridge](../../statistics/ridge.md), [regress](../../statistics/regress.md), [robustfit](../../statistics/robustfit.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
