# fitrknn

Ajuste un modele de regression par k plus proches voisins.

## 📝 Syntaxe

- mdl = fitrknn(X, Y)
- mdl = fitrknn(X, Y, Name, Value)
- yfit = predict(mdl, Xnew)
- [yfit, D] = predict(mdl, Xnew)

## 📄 Description

<b>fitrknn</b> cree un objet <b>RegressionKNN</b> a partir des predicteurs numeriques <b>X</b> et de la reponse numerique <b>Y</b>.

Les arguments nom-valeur incluent <b>NumNeighbors</b>, <b>Distance</b>, <b>DistanceWeight</b>, <b>Standardize</b>, <b>P</b>, <b>Scale</b>, <b>PredictorNames</b> et <b>ResponseName</b>. La prediction retourne les moyennes ponderees des reponses voisines.

## 💡 Exemple

```matlab
X = [0 0; 0 1; 1 0; 5 5; 5 6; 6 5];
Y = [1; 1.2; 1.1; 10; 10.2; 10.1];
mdl = fitrknn(X, Y, 'NumNeighbors', 3);
yfit = predict(mdl, [0.2 0.1; 5.2 5.1])
```

## 🔗 Voir aussi

[fitcknn](../../statistics/fitcknn.md), [fitrtree](../../statistics/fitrtree.md), [knnsearch](../../statistics/knnsearch.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
