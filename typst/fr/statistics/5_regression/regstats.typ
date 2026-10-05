#import "../nelson_help.typ": *

= regstats <statistics:5_regression.regstats>

Statistiques de diagnostic de regression.

== Syntaxe

- #raw("stats = regstats(y, X)");
- #raw("stats = regstats(y, X, modelspec)");
- #raw("stats = regstats(y, X, modelspec, StatNames)");

== Description

#strong[regstats]; ajuste un modele de regression lineaire du vecteur reponse #strong[y]; sur la matrice de predicteurs #strong[X]; et retourne des statistiques de diagnostic dans une structure.

 Le modele inclut une constante par defaut. Les specifications de modele supportees sont #strong[linear];, #strong[additive];, #strong[interactions];, #strong[quadratic];, #strong[purequadratic];, un degre entier positif ou une matrice numerique d'exposants de termes.

 #strong[StatNames]; peut etre #strong[all];, un scalaire texte ou un tableau cellulaire de noms. Les noms supportes incluent #strong[Q];, #strong[R];, #strong[beta];, #strong[covb];, #strong[yhat];, #strong[r];, #strong[mse];, #strong[rsquare];, #strong[adjrsquare];, #strong[leverage];, #strong[hatmat];, #strong[s2\_i];, #strong[beta\_i];, #strong[standres];, #strong[studres];, #strong[dfbetas];, #strong[dffit];, #strong[dffits];, #strong[covratio];, #strong[cookd];, #strong[tstat];, #strong[fstat]; et #strong[dwstat];.


== Exemples

``````matlab
X = [1 5; 2 4; 3 6; 4 8; 5 7; 6 9];
y = [3.2; 4.1; 5.9; 7.8; 8.4; 10.2];
stats = regstats(y, X, 'linear', {'beta', 'rsquare', 'tstat'})
``````

``````matlab
X = [1 5; 2 4; 3 6; 4 8; 5 7; 6 9];
y = [3.2; 4.1; 5.9; 7.8; 8.4; 10.2];
stats = regstats(y, X, 'interactions', {'yhat', 'r'})
``````


== Voir aussi

#nlink(<statistics:5_regression.regress>)[regress];, #nlink(<statistics:5_regression.robustfit>)[robustfit];, #nlink(<statistics:5_regression.ridge>)[ridge];, #nlink(<statistics:5_regression.lasso>)[lasso];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
