#import "../nelson_help.typ": *

= predict <statistics:5_regression.predict>

Prédire des réponses ou des étiquettes de classe à partir d'un modèle ajusté.

== Syntaxe

- #raw("yfit = predict(mdl, Xnew)");
- #raw("label = predict(mdl, Xnew)");
- #raw("[label, score] = predict(mdl, Xnew)");

== Argument d'entrée

/ mdl: un objet modèle ajusté, tel qu'un LinearModel, un GeneralizedLinearModel, ou l'un des objets de modèle de régression ou de classification renvoyés par les fonctions d'ajustement.
/ Xnew: matrice numérique de nouvelles observations : les lignes sont les observations et les colonnes les prédicteurs, en correspondance avec les prédicteurs utilisés pour entraîner mdl.

== Argument de sortie

/ yfit: valeurs de réponse prédites pour les observations de Xnew (modèles de régression).
/ label: étiquettes de classe prédites pour les observations de Xnew (modèles de classification).
/ score: scores de classification pour chaque observation et chaque classe (modèles de classification fournissant des scores).

== Description

#strong[predict]; est la méthode commune utilisée pour évaluer un modèle ajusté sur de nouvelles données de prédicteurs.

 Pour les modèles de régression (par exemple l'objet renvoyé par #strong[fitlm]; ou #strong[fitglm];), #strong[predict]; renvoie la réponse prédite #strong[yfit]; pour chaque ligne de #strong[Xnew];.

 Pour les modèles de classification (par exemple l'objet renvoyé par #strong[fitcsvm]; ou #strong[fitctree];), #strong[predict]; renvoie l'étiquette de classe prédite #strong[label]; pour chaque observation, et éventuellement une matrice de #strong[score]; de classification.

 Les colonnes de #strong[Xnew]; doivent correspondre aux prédicteurs utilisés lors de l'ajustement du modèle.


== Exemple

Prédire des réponses à partir d'un modèle linéaire ajusté.

``````matlab
X = [1 2; 2 1; 3 4; 4 3];
y = [3; 3; 7; 7];
mdl = fitlm(X, y);
yfit = predict(mdl, [7 4; 8 5])
``````


== Voir aussi

#nlink(<statistics:5_regression.fitlm>)[fitlm];, #nlink(<statistics:5_regression.fitglm>)[fitglm];, #nlink(<statistics:6_classification.fitcsvm>)[fitcsvm];, #nlink(<statistics:6_classification.fitctree>)[fitctree];, #nlink(<statistics:5_regression.LinearModel>)[LinearModel];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
