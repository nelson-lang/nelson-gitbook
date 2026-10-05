# fitcdiscr

Ajuste un classifieur par analyse discriminante.

## 📝 Syntaxe

- mdl = fitcdiscr(X, Y)
- mdl = fitcdiscr(X, Y, Name, Value)
- label = predict(mdl, Xnew)
- [label, score, cost] = predict(mdl, Xnew)

## 📄 Description


<b>fitcdiscr</b> cree un objet <b>ClassificationDiscriminant</b> a partir des predicteurs numeriques <b>X</b> et des etiquettes de classe <b>Y</b>. 

Les arguments nom-valeur incluent <b>ClassNames</b>, <b>Prior</b>, <b>DiscrimType</b>, <b>Gamma</b> et <b>Delta</b>. Les types discriminants pris en charge sont linear, quadratic, diaglinear et diagquadratic. La prediction retourne des scores de classe posterieurs.

## 💡 Exemple



```matlab
X = [0 0; 0 1; 1 0; 1 1; 5 5; 5 6; 6 5; 6 6];
Y = [1; 1; 1; 1; 2; 2; 2; 2];
mdl = fitcdiscr(X, Y);
[label, score] = predict(mdl, [0.2 0.1; 5.2 5.1])
```


## 🔗 Voir aussi

[fitcknn](../../statistics/6_classification/fitcknn.md), [fitcnb](../../statistics/6_classification/fitcnb.md), [grp2idx](../../statistics/6_classification/grp2idx.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
