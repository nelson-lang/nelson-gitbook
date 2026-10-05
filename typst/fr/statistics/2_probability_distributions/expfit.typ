#import "../nelson_help.typ": *

= expfit <statistics:2_probability_distributions.expfit>

Estimation de la moyenne exponentielle

== Syntaxe

- #raw("phat = expfit(x)");
- #raw("[phat, pci] = expfit(x, alpha)");
- #raw("[phat, pci] = expfit(x, alpha, censoring, freq)");
- #raw("[phat, pci] = expfit(x, alpha, censoring, freq, options)");

== Argument d'entrée

/ x: vecteur ou matrice reel non vide de valeurs finies positives ou nulles : donnees observees.
/ alpha: scalaire dans l'intervalle \[0, 1\] : niveau de signification. La valeur par defaut est 0.05.
/ censoring: tableau contenant des valeurs 0 ou 1 : indicateurs de censure a droite.
/ freq: tableau de valeurs finies positives ou nulles : frequences d'observation.
/ options: structure creee par statset. MaxIter et TolX sont valides pour compatibilite.

== Argument de sortie

/ phat: tableau : estimations du parametre de moyenne.
/ pci: tableau : intervalles de confiance des estimations.

== Description

#strong[expfit]; estime le parametre de moyenne de la loi exponentielle.


== Exemple

``````matlab
x = [0.5 1 2 3 5 8];
[phat, pci] = expfit(x);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.explike>)[explike];, #nlink(<statistics:2_probability_distributions.exppdf>)[exppdf];, #nlink(<statistics:2_probability_distributions.expcdf>)[expcdf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
