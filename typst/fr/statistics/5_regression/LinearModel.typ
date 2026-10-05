#import "../nelson_help.typ": *

= LinearModel <statistics:5_regression.LinearModel>

Modele de regression lineaire.

== Syntaxe

- #raw("mdl = fitlm(X, y)");
- #raw("mdl = fitlm(X, y, modelspec)");
- #raw("yfit = predict(mdl, Xnew)");

== Argument d'entrée

/ X: matrice numerique : les lignes sont les observations et les colonnes sont les predicteurs.
/ y: vecteur numerique : reponses, une valeur pour chaque ligne de X.
/ Name, Value: arguments nom-valeur optionnels acceptes par la fonction d'ajustement correspondante.

== Argument de sortie

/ mdl: objet modele de regression renvoye par la fonction d'ajustement.
/ yfit: reponses predites pour de nouvelles observations.

== Description

LinearModel stocke un modele de regression lineaire ajuste, notamment les coefficients, les noms des predicteurs et les informations de reponse.

 Creez cet objet avec fitlm. Utilisez predict pour evaluer les reponses ajustees pour de nouveaux predicteurs.


== Fonction(s) utilisée(s)

fitlm predict

== Exemple

Ajuster un modele lineaire et predire deux reponses.

``````matlab
X = [1 1; 2 1; 3 2; 4 3; 5 3; 6 4];
y = 1 + 2 * X(:,1) - X(:,2);
mdl = fitlm(X, y);
yfit = predict(mdl, [7 4; 8 5])
``````


== Voir aussi

#nlink(<statistics:5_regression.predict>)[predict];, #nlink(<statistics:5_regression.fitlm>)[fitlm];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
