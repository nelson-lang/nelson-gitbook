# fitcknn

Ajuste un classifieur par k plus proches voisins.

## 📝 Syntaxe

- mdl = fitcknn(X, Y)
- mdl = fitcknn(X, Y, Name, Value)
- label = predict(mdl, Xnew)
- [label, score, cost] = predict(mdl, Xnew)

## 📄 Description


<b>fitcknn</b> cree un objet <b>ClassificationKNN</b> a partir des predicteurs numeriques <b>X</b> et des etiquettes de classe <b>Y</b>. 

Les arguments nom-valeur incluent <b>NumNeighbors</b>, <b>Distance</b>, <b>DistanceWeight</b>, <b>Standardize</b>, <b>P</b>, <b>Scale</b> et <b>ClassNames</b>. La prediction utilise la recherche native des plus proches voisins et retourne des scores de classe normalises.

## 💡 Exemple



```matlab
X = [0 0; 0 1; 1 0; 5 5; 5 6; 6 5];
Y = [1; 1; 1; 2; 2; 2];
mdl = fitcknn(X, Y, 'NumNeighbors', 3);
[label, score] = predict(mdl, [0.2 0.1; 5.2 5.1])
```


## 🔗 Voir aussi

[knnsearch](../../statistics/7_clustering_anomaly_detection/knnsearch.md), [fitgmdist](../../statistics/7_clustering_anomaly_detection/fitgmdist.md), [grp2idx](../../statistics/6_classification/grp2idx.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
