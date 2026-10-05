# fitrsvm

Ajuste un modele de regression par machine a vecteurs de support.

## 📝 Syntaxe

- mdl = fitrsvm(X, Y)
- mdl = fitrsvm(X, Y, Name, Value)
- yfit = predict(mdl, Xnew)

## 📄 Description


<b>fitrsvm</b> cree un objet <b>RegressionSVM</b> a partir de predicteurs numeriques <b>X</b> et de la reponse numerique <b>Y</b>. 

Les arguments nom-valeur incluent <b>KernelFunction</b>, <b>KernelScale</b>, <b>PolynomialOrder</b>, <b>BoxConstraint</b>, <b>Epsilon</b>, <b>Standardize</b>, <b>PredictorNames</b> et <b>ResponseName</b>. Les noyaux pris en charge sont <b>linear</b>, <b>gaussian</b>, <b>rbf</b> et <b>polynomial</b>.

## 💡 Exemple



```matlab
X = [0; 1; 2; 3; 4; 5];
Y = [1; 1.2; 3; 3.2; 9; 9.1];
mdl = fitrsvm(X, Y, 'KernelFunction', 'gaussian');
yfit = predict(mdl, [1.5; 4.5])
```


## 🔗 Voir aussi

[fitcsvm](../../statistics/6_classification/fitcsvm.md), [fitrknn](../../statistics/5_regression/fitrknn.md), [fitrtree](../../statistics/5_regression/fitrtree.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
