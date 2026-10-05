#import "../nelson_help.typ": *

= fitensemble <statistics:5_regression.fitensemble>

Ajuste un modele d'ensemble avec la syntaxe historique.

== Syntaxe

- #raw("mdl = fitensemble(X, Y, method, numLearningCycles, learners)");
- #raw("mdl = fitensemble(..., Name, Value)");

== Description

#strong[fitensemble]; redirige la syntaxe historique vers #strong[fitrensemble]; ou #strong[fitcensemble];. Utilisez #strong[Type]; pour choisir regression ou classification.


== Exemple

``````matlab
X = (1:6)';
Y = [1; 2; 1.5; 4; 3.5; 5];
mdl = fitensemble(X, Y, 'LSBoost', 3, 'Tree', 'Type', 'regression')
``````


== Voir aussi

#nlink(<statistics:5_regression.fitrensemble>)[fitrensemble];, #nlink(<statistics:6_classification.fitcensemble>)[fitcensemble];.
