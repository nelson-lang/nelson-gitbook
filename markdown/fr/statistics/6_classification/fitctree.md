# fitctree

Ajuste un arbre de decision de classification.

## 📝 Syntaxe

- mdl = fitctree(X, Y)
- mdl = fitctree(X, Y, Name, Value)
- label = predict(mdl, Xnew)
- [label, score, cost, node] = predict(mdl, Xnew)

## 📄 Description

<b>fitctree</b> cree un objet <b>ClassificationTree</b> a partir des predicteurs numeriques <b>X</b> et des etiquettes de classe <b>Y</b>.

Les arguments nom-valeur incluent <b>ClassNames</b>, <b>Prior</b>, <b>SplitCriterion</b>, <b>MaxNumSplits</b>, <b>MinLeafSize</b> et <b>MinParentSize</b>. Les predicteurs numeriques sont separes par tests binaires de seuil. La prediction retourne les scores de classe des feuilles.

## 💡 Exemple

```matlab
X = [0 0; 0 1; 1 0; 1 1; 5 5; 5 6; 6 5; 6 6];
Y = [1; 1; 1; 1; 2; 2; 2; 2];
mdl = fitctree(X, Y);
[label, score] = predict(mdl, [0.2 0.1; 5.2 5.1])
```

## 🔗 Voir aussi

[fitcknn](../../statistics/fitcknn.md), [fitcnb](../../statistics/fitcnb.md), [fitcdiscr](../../statistics/fitcdiscr.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
