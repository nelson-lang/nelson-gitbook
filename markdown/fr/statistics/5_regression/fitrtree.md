# fitrtree

Ajuste un arbre de regression.

## 📝 Syntaxe

- mdl = fitrtree(X, Y)
- mdl = fitrtree(X, Y, Name, Value)
- yfit = predict(mdl, Xnew)
- [yfit, node] = predict(mdl, Xnew)

## 📄 Description


<b>fitrtree</b> cree un objet <b>RegressionTree</b> a partir des predicteurs numeriques <b>X</b> et de la reponse numerique <b>Y</b>. 

Les arguments nom-valeur incluent <b>MaxNumSplits</b>, <b>MinLeafSize</b>, <b>MinParentSize</b>, <b>PredictorNames</b> et <b>ResponseName</b>. Les predicteurs numeriques sont separes par des tests binaires de seuil qui reduisent l'erreur quadratique.

## 💡 Exemple



```matlab
X = [0; 1; 2; 3; 4; 5];
Y = [1; 1.2; 3; 3.2; 9; 9.1];
mdl = fitrtree(X, Y, 'MaxNumSplits', 2);
yfit = predict(mdl, [1.5; 4.5])
```


## 🔗 Voir aussi

[fitctree](../../statistics/6_classification/fitctree.md), [fitlm](../../statistics/5_regression/fitlm.md), [fitglm](../../statistics/5_regression/fitglm.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
