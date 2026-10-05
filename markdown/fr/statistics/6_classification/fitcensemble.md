# fitcensemble

Ajuste un classifieur d'ensemble.

## 📝 Syntaxe

- mdl = fitcensemble(X, Y)
- mdl = fitcensemble(X, Y, Name, Value)
- label = predict(mdl, Xnew)
- [label, score] = predict(mdl, Xnew)

## 📄 Description


<b>fitcensemble</b> cree un objet <b>ClassificationEnsemble</b> a partir de predicteurs numeriques <b>X</b> et d'etiquettes de classes <b>Y</b>. 

L'implementation actuelle prend en charge les ensembles <b>Bag</b> d'apprenants arbre. Les arguments nom-valeur incluent <b>ClassNames</b>, <b>Method</b>, <b>Learners</b>, <b>NumLearningCycles</b>, <b>MaxNumSplits</b>, <b>MinLeafSize</b> et <b>MinParentSize</b>.

## 💡 Exemple



```matlab
X = [0 0; 0 1; 5 5; 5 6; 10 0; 10 1];
Y = [1; 1; 2; 2; 3; 3];
mdl = fitcensemble(X, Y, 'NumLearningCycles', 5);
[label, score] = predict(mdl, [0.2 0.2; 5.2 5.2; 10.2 0.2])
```


## 🔗 Voir aussi

[fitctree](../../statistics/6_classification/fitctree.md), [fitcecoc](../../statistics/6_classification/fitcecoc.md), [fitcknn](../../statistics/6_classification/fitcknn.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
