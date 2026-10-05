#import "../nelson_help.typ": *

= fitlm <statistics:5_regression.fitlm>

Ajuste un modele de regression lineaire.

== Syntaxe

- #raw("mdl = fitlm(X, y)");
- #raw("mdl = fitlm(X, y, modelspec)");
- #raw("mdl = fitlm(X, y, ..., Name, Value)");
- #raw("yfit = predict(mdl, Xnew)");

== Description

#strong[fitlm]; cree un objet #strong[LinearModel]; a partir de predicteurs numeriques #strong[X]; et d'une reponse #strong[y];.

 Les specifications de modele prises en charge incluent #strong[constant];, #strong[linear];, #strong[interactions];, #strong[quadratic];, #strong[purequadratic]; et les matrices numeriques de termes. Les arguments nom-valeur incluent #strong[Intercept];, #strong[PredictorNames]; et #strong[ResponseName];.


== Exemple

``````matlab
X = [1 2; 2 1; 3 4; 4 3; 5 6; 6 5];
y = 1 + 2 * X(:,1) - 3 * X(:,2);
mdl = fitlm(X, y);
yfit = predict(mdl, [7 8; 8 7])
``````


== Voir aussi

#nlink(<statistics:5_regression.regress>)[regress];, #nlink(<statistics:5_regression.regstats>)[regstats];, #nlink(<statistics:5_regression.robustfit>)[robustfit];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
