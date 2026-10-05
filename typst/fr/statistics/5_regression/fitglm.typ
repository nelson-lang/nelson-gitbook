#import "../nelson_help.typ": *

= fitglm <statistics:5_regression.fitglm>

Ajuste un modele de regression lineaire generalise.

== Syntaxe

- #raw("mdl = fitglm(X, y)");
- #raw("mdl = fitglm(X, y, modelspec)");
- #raw("mdl = fitglm(X, y, ..., Name, Value)");
- #raw("yfit = predict(mdl, Xnew)");

== Description

#strong[fitglm]; cree un objet #strong[GeneralizedLinearModel]; a partir des predicteurs numeriques #strong[X]; et de la reponse #strong[y];.

 Les distributions prises en charge sont #strong[normal];, #strong[binomial]; et #strong[poisson];. Les liens pris en charge sont #strong[identity];, #strong[log]; et #strong[logit];, avec des valeurs par defaut canoniques pour chaque distribution.

 Les specifications de modele prises en charge incluent #strong[constant];, #strong[linear];, #strong[interactions];, #strong[quadratic];, #strong[purequadratic]; et les matrices de termes numeriques. Les arguments nom-valeur incluent #strong[Distribution];, #strong[Link];, #strong[Intercept];, #strong[PredictorNames];, #strong[ResponseName];, #strong[MaxIter]; et #strong[TolFun];.


== Exemple

``````matlab
X = [0; 1; 2; 3; 4; 5; 6; 7];
y = [1; 1; 2; 3; 5; 8; 13; 21];
mdl = fitglm(X, y, 'Distribution', 'poisson');
yfit = predict(mdl, [2; 4; 6])
``````


== Voir aussi

#nlink(<statistics:5_regression.fitlm>)[fitlm];, #nlink(<statistics:5_regression.regress>)[regress];, #nlink(<statistics:5_regression.robustfit>)[robustfit];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
