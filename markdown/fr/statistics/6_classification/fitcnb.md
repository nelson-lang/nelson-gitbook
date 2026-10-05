# fitcnb

Ajuste un classifieur naive Bayes.

## 📝 Syntaxe

- mdl = fitcnb(X, Y)
- mdl = fitcnb(X, Y, Name, Value)
- label = predict(mdl, Xnew)
- [label, score, cost] = predict(mdl, Xnew)

## 📄 Description


<b>fitcnb</b> cree un objet <b>ClassificationNaiveBayes</b> a partir des predicteurs numeriques <b>X</b> et des etiquettes de classe <b>Y</b>. 

L'implementation courante ajuste des distributions normales pour les predicteurs. Les arguments nom-valeur incluent <b>ClassNames</b>, <b>Prior</b>, <b>DistributionNames</b> et <b>Weights</b>. La prediction retourne des scores de classe posterieurs.

## 💡 Exemple



```matlab
X = [0 0; 0 1; 1 0; 5 5; 5 6; 6 5];
Y = [1; 1; 1; 2; 2; 2];
mdl = fitcnb(X, Y);
[label, score] = predict(mdl, [0.2 0.1; 5.2 5.1])
```


## 🔗 Voir aussi

[fitcknn](../../statistics/6_classification/fitcknn.md), [grp2idx](../../statistics/6_classification/grp2idx.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
