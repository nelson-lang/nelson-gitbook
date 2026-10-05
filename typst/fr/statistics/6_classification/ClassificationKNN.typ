#import "../nelson_help.typ": *

= ClassificationKNN <statistics:6_classification.ClassificationKNN>

Modele de classification par k plus proches voisins.

== Syntaxe

- #raw("mdl = fitcknn(X, Y)");
- #raw("mdl = fitcknn(X, Y, Name, Value)");
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

ClassificationKNN stocke un classifieur par plus proches voisins avec ses predicteurs d'apprentissage, ses etiquettes, sa distance et son nombre de voisins.

 Creez cet objet avec fitcknn. Utilisez predict pour classer des observations a partir de leurs voisins les plus proches.


== Fonction(s) utilisée(s)

fitcknn predict

== Exemple

Entrainer un classifieur par plus proches voisins et classer deux observations.

``````matlab
X = [0 0; 0 1; 1 0; 5 5; 5 6; 6 5];
Y = [1; 1; 1; 2; 2; 2];
mdl = fitcknn(X, Y, 'NumNeighbors', 3);
label = predict(mdl, [0.2 0.1; 5.2 5.1])
``````


== Voir aussi

#nlink(<statistics:5_regression.predict>)[predict];, #nlink(<statistics:6_classification.fitcknn>)[fitcknn];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
