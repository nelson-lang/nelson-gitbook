#import "../nelson_help.typ": *

= RegressionSVM <statistics:5_regression.RegressionSVM>

Modele de regression par machine a vecteurs de support.

== Syntaxe

- #raw("mdl = fitrsvm(X, y)");
- #raw("yfit = predict(mdl, Xnew)");

== Argument d'entrée

/ X: matrice numerique : les lignes sont les observations et les colonnes sont les predicteurs.
/ y: vecteur numerique : reponses, une valeur pour chaque ligne de X.
/ Name, Value: arguments nom-valeur optionnels acceptes par la fonction d'ajustement correspondante.

== Argument de sortie

/ mdl: objet modele de regression renvoye par la fonction d'ajustement.
/ yfit: reponses predites pour de nouvelles observations.

== Description

RegressionSVM stocke un modele de regression a vecteurs de support, notamment les vecteurs support, les informations de noyau et les donnees de reponse.

 Creez cet objet avec fitrsvm. Utilisez predict pour estimer les reponses de nouvelles observations.


== Fonction(s) utilisée(s)

fitrsvm predict

== Exemple

Entrainer un modele de regression a vecteurs de support et predire deux reponses.

``````matlab
X = [1 1; 2 1; 3 2; 4 3; 5 3; 6 4];
y = 1 + 2 * X(:,1) - X(:,2);
mdl = fitrsvm(X, y, 'KernelFunction', 'linear');
yfit = predict(mdl, [7 4; 8 5])
``````


== Voir aussi

#nlink(<statistics:5_regression.predict>)[predict];, #nlink(<statistics:5_regression.fitrsvm>)[fitrsvm];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
