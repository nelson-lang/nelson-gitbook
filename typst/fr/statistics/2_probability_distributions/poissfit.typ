#import "../nelson_help.typ": *

= poissfit <statistics:2_probability_distributions.poissfit>

Estimation du taux de Poisson

== Syntaxe

- #raw("lambdaHat = poissfit(x)");
- #raw("[lambdaHat, lambdaCI] = poissfit(x, alpha)");

== Argument d'entrée

/ x: vecteur ou matrice reel non vide d'entiers finis positifs ou nuls : comptes observes.
/ alpha: scalaire dans l'intervalle \[0, 1\] : niveau de signification. La valeur par defaut est 0.05.

== Argument de sortie

/ lambdaHat: tableau : estimations du taux de Poisson.
/ lambdaCI: tableau : intervalles de confiance des estimations.

== Description

#strong[poissfit]; estime le parametre de taux de la loi de Poisson.


== Exemple

``````matlab
x = [0 1 2 3 5 8];
[lambdaHat, lambdaCI] = poissfit(x);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.poisslike>)[poisslike];, #nlink(<statistics:2_probability_distributions.poisspdf>)[poisspdf];, #nlink(<statistics:2_probability_distributions.poisscdf>)[poisscdf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
