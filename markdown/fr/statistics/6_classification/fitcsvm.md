# fitcsvm

Ajuste un classifieur binaire par machine a vecteurs de support.

## 📝 Syntaxe

- mdl = fitcsvm(X, Y)
- mdl = fitcsvm(X, Y, Name, Value)
- label = predict(mdl, Xnew)
- [label, score] = predict(mdl, Xnew)

## 📄 Description

<b>fitcsvm</b> cree un objet <b>ClassificationSVM</b> a partir de predicteurs numeriques <b>X</b> et d'etiquettes a deux classes <b>Y</b>.

Les arguments nom-valeur incluent <b>ClassNames</b>, <b>KernelFunction</b>, <b>KernelScale</b>, <b>PolynomialOrder</b>, <b>BoxConstraint</b>, <b>Cost</b>, <b>Standardize</b>, <b>IterationLimit</b>, <b>Tolerance</b> et <b>PredictorNames</b>. Les noyaux pris en charge sont <b>linear</b>, <b>gaussian</b>, <b>rbf</b> et <b>polynomial</b>.

## 💡 Exemple

```matlab
X = [0 0; 0 1; 1 0; 1 1; 5 5; 5 6; 6 5; 6 6];
Y = [1; 1; 1; 1; 2; 2; 2; 2];
mdl = fitcsvm(X, Y, 'KernelFunction', 'linear');
[label, score] = predict(mdl, [0.2 0.2; 5.2 5.2])
```

## 🔗 Voir aussi

[fitcknn](../../statistics/fitcknn.md), [fitcdiscr](../../statistics/fitcdiscr.md), [fitctree](../../statistics/fitctree.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
