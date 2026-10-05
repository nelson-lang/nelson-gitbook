# fitrensemble

Ajuste un modele de regression d'ensemble.

## 📝 Syntaxe

- mdl = fitrensemble(X, Y)
- mdl = fitrensemble(X, Y, Name, Value)
- yfit = predict(mdl, Xnew)

## 📄 Description


<b>fitrensemble</b> cree un objet <b>RegressionEnsemble</b> a partir de predicteurs numeriques <b>X</b> et de la reponse numerique <b>Y</b>. 

L'implementation actuelle prend en charge les ensembles <b>Bag</b> et <b>LSBoost</b> d'apprenants arbre. Les arguments nom-valeur incluent <b>Method</b>, <b>Learners</b>, <b>NumLearningCycles</b>, <b>LearnRate</b>, <b>MaxNumSplits</b>, <b>MinLeafSize</b>, <b>MinParentSize</b>, <b>PredictorNames</b> et <b>ResponseName</b>.

## 💡 Exemple



```matlab
X = [0; 1; 2; 3; 4; 5];
Y = [1; 1.2; 3; 3.2; 9; 9.1];
mdl = fitrensemble(X, Y, 'NumLearningCycles', 5);
yfit = predict(mdl, [1.5; 4.5])
```


## 🔗 Voir aussi

[fitrtree](../../statistics/5_regression/fitrtree.md), [fitrknn](../../statistics/5_regression/fitrknn.md), [fitrsvm](../../statistics/5_regression/fitrsvm.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
