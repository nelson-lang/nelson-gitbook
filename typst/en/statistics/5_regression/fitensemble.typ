#import "../nelson_help.typ": *

= fitensemble <statistics:5_regression.fitensemble>

Fit an ensemble model using the legacy wrapper.

== Syntax

- #raw("mdl = fitensemble(X, Y, method, numLearningCycles, learners)");
- #raw("mdl = fitensemble(..., Name, Value)");

== Description

#strong[fitensemble]; routes legacy ensemble syntax to #strong[fitrensemble]; or #strong[fitcensemble];. Use #strong[Type]; to select regression or classification.


== Example

``````matlab
X = (1:6)';
Y = [1; 2; 1.5; 4; 3.5; 5];
mdl = fitensemble(X, Y, 'LSBoost', 3, 'Tree', 'Type', 'regression')
``````


== See also

#nlink(<statistics:5_regression.fitrensemble>)[fitrensemble];, #nlink(<statistics:6_classification.fitcensemble>)[fitcensemble];.
