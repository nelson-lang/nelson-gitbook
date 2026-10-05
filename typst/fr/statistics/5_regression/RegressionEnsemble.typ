#import "../nelson_help.typ": *

= RegressionEnsemble <statistics:5_regression.RegressionEnsemble>

Modele d'ensemble pour la regression.

== Syntaxe

- #raw("mdl = fitrensemble(X, y)");
- #raw("yfit = predict(mdl, Xnew)");

== Argument d'entrée

/ X: matrice numerique : les lignes sont les observations et les colonnes sont les predicteurs.
/ y: vecteur numerique : reponses, une valeur pour chaque ligne de X.
/ Name, Value: arguments nom-valeur optionnels acceptes par la fonction d'ajustement correspondante.

== Argument de sortie

/ mdl: objet modele de regression renvoye par la fonction d'ajustement.
/ yfit: reponses predites pour de nouvelles observations.

== Description

RegressionEnsemble stocke un modele de regression qui combine plusieurs apprenants faibles.

 Creez cet objet avec fitrensemble. Utilisez predict pour agreger les reponses des apprenants sur de nouvelles observations.


== Fonction(s) utilisée(s)

fitrensemble predict

== Exemple

Entrainer un ensemble de regression et predire deux reponses.

``````matlab
X = [1 1; 2 1; 3 2; 4 3; 5 3; 6 4];
y = 1 + 2 * X(:,1) - X(:,2);
mdl = fitrensemble(X, y, 'NumLearningCycles', 3);
yfit = predict(mdl, [7 4; 8 5])
``````


== Voir aussi

#nlink(<statistics:5_regression.predict>)[predict];, #nlink(<statistics:5_regression.fitrensemble>)[fitrensemble];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
