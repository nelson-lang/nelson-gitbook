# robustfit

Regression lineaire robuste.

## 📝 Syntaxe

- b = robustfit(X, y)
- b = robustfit(X, y, wfun, tune, const)
- [b, stats] = robustfit(...)

## 📄 Description

<b>robustfit</b> ajuste un modele de regression lineaire par moindres carres iterativement reponderes.

Par defaut, une colonne constante est ajoutee avant l'ajustement. Les fonctions de poids prises en charge incluent <b>bisquare</b>, <b>huber</b>, <b>fair</b>, <b>cauchy</b>, <b>welsch</b>, <b>talwar</b>, <b>andrews</b>, <b>logistic</b>, <b>ols</b> et les handles de fonction.

## 💡 Exemple

```matlab
x = (1:10)';
y = 10 - 2*x + randn(10,1);
[b, stats] = robustfit(x, y)
```

## 🔗 Voir aussi

[regress](../../statistics/regress.md), [corr](../../statistics/corr.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
