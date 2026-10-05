#import "../nelson_help.typ": *

= ClassificationNaiveBayes <statistics:6_classification.ClassificationNaiveBayes>

Modele de classification naive Bayes.

== Syntaxe

- #raw("mdl = fitcnb(X, Y)");
- #raw("label = predict(mdl, Xnew)");
- #raw("[label, score, cost] = predict(mdl, Xnew)");

== Argument d'entrée

/ X: matrice numerique : les lignes sont les observations et les colonnes sont les predicteurs.
/ Y: vecteur : etiquettes de classes, une etiquette pour chaque ligne de X.
/ Name, Value: arguments nom-valeur optionnels acceptes par la fonction d'ajustement correspondante.

== Argument de sortie

/ mdl: objet modele de classification renvoye par la fonction d'ajustement.
/ label: etiquettes de classes predites pour de nouvelles observations.
/ score: scores de classes ou valeurs apparentees aux probabilites a posteriori lorsque le modele les fournit.

== Description

ClassificationNaiveBayes stocke un classifieur naive Bayes avec les probabilites a priori des classes et les informations de distribution des predicteurs.

 Creez cet objet avec fitcnb. Utilisez predict pour classer de nouvelles observations.


== Fonction(s) utilisée(s)

fitcnb predict

== Exemple

Entrainer un classifieur naive Bayes et classer deux observations.

``````matlab
X = [0 0; 0 1; 1 0; 5 5; 5 6; 6 5];
Y = [1; 1; 1; 2; 2; 2];
mdl = fitcnb(X, Y);
label = predict(mdl, [0.2 0.1; 5.2 5.1])
``````


== Voir aussi

#nlink(<statistics:5_regression.predict>)[predict];, #nlink(<statistics:6_classification.fitcnb>)[fitcnb];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
