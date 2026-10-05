# fitcecoc

Ajuste un classifieur multiclasses par codes correcteurs d'erreurs.

## 📝 Syntaxe

- mdl = fitcecoc(X, Y)
- mdl = fitcecoc(X, Y, Name, Value)
- label = predict(mdl, Xnew)
- [label, score] = predict(mdl, Xnew)

## 📄 Description


<b>fitcecoc</b> cree un objet <b>ClassificationECOC</b> a partir de predicteurs numeriques <b>X</b> et d'etiquettes de classes <b>Y</b>. 

Le classifieur actuel utilise des apprenants binaires <b>fitcsvm</b> un-contre-un. Les arguments nom-valeur incluent <b>ClassNames</b>, <b>KernelFunction</b>, <b>KernelScale</b>, <b>PolynomialOrder</b>, <b>BoxConstraint</b>, <b>Standardize</b>, <b>IterationLimit</b> et <b>Tolerance</b>.

## 💡 Exemple



```matlab
X = [0 0; 0 1; 5 5; 5 6; 10 0; 10 1];
Y = [1; 1; 2; 2; 3; 3];
mdl = fitcecoc(X, Y);
[label, score] = predict(mdl, [0.2 0.2; 5.2 5.2; 10.2 0.2])
```


## 🔗 Voir aussi

[fitcsvm](../../statistics/6_classification/fitcsvm.md), [fitcknn](../../statistics/6_classification/fitcknn.md), [fitctree](../../statistics/6_classification/fitctree.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
