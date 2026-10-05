#import "../nelson_help.typ": *

= x2fx <statistics:9_design_of_experiments.x2fx>

Convertir des facteurs en matrice de plan.

== Syntaxe

- #raw("D = x2fx(X, modelspec)");

== Description

#strong[x2fx]; cree une matrice de plan avec une colonne constante et les termes demandes par la specification du modele.


== Fonction(s) utilisée(s)

candgen rowexch cordexch

== Exemples

Creer des matrices de modele courantes depuis des reglages de facteurs.

``````matlab
X = [1 2; 3 4];
Dlinear = x2fx(X, 'linear')
Dquadratic = x2fx(X, 'quadratic')
``````

Utiliser une matrice de specification de modele explicite.

``````matlab
X = [1 2; 3 4];
modelspec = [1 0; 0 2; 1 1];
D = x2fx(X, modelspec)
``````

