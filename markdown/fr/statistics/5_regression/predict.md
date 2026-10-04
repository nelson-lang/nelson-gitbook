# predict

Prédire des réponses ou des étiquettes de classe à partir d'un modèle ajusté.

## 📝 Syntaxe

- yfit = predict(mdl, Xnew)
- label = predict(mdl, Xnew)
- [label, score] = predict(mdl, Xnew)

## 📥 Argument d'entrée

- mdl - un objet modèle ajusté, tel qu'un LinearModel, un GeneralizedLinearModel, ou l'un des objets de modèle de régression ou de classification renvoyés par les fonctions d'ajustement.
- Xnew - matrice numérique de nouvelles observations : les lignes sont les observations et les colonnes les prédicteurs, en correspondance avec les prédicteurs utilisés pour entraîner mdl.

## 📤 Argument de sortie

- yfit - valeurs de réponse prédites pour les observations de Xnew (modèles de régression).
- label - étiquettes de classe prédites pour les observations de Xnew (modèles de classification).
- score - scores de classification pour chaque observation et chaque classe (modèles de classification fournissant des scores).

## 📄 Description

<b>predict</b> est la méthode commune utilisée pour évaluer un modèle ajusté sur de nouvelles données de prédicteurs.

Pour les modèles de régression (par exemple l'objet renvoyé par <b>fitlm</b> ou <b>fitglm</b>), <b>predict</b> renvoie la réponse prédite <b>yfit</b> pour chaque ligne de <b>Xnew</b>.

Pour les modèles de classification (par exemple l'objet renvoyé par <b>fitcsvm</b> ou <b>fitctree</b>), <b>predict</b> renvoie l'étiquette de classe prédite <b>label</b> pour chaque observation, et éventuellement une matrice de <b>score</b> de classification.

Les colonnes de <b>Xnew</b> doivent correspondre aux prédicteurs utilisés lors de l'ajustement du modèle.

## 💡 Exemple

Prédire des réponses à partir d'un modèle linéaire ajusté.

```matlab
X = [1 2; 2 1; 3 4; 4 3];
y = [3; 3; 7; 7];
mdl = fitlm(X, y);
yfit = predict(mdl, [7 4; 8 5])
```

## 🔗 Voir aussi

[fitlm](../../statistics/fitlm.md), [fitglm](../../statistics/fitglm.md), [fitcsvm](../../statistics/fitcsvm.md), [fitctree](../../statistics/fitctree.md), [LinearModel](../../statistics/LinearModel.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
