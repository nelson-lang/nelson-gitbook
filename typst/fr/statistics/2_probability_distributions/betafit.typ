#import "../nelson_help.typ": *

= betafit <statistics:2_probability_distributions.betafit>

Estimation des parametres beta

== Syntaxe

- #raw("phat = betafit(x)");
- #raw("[phat, pci] = betafit(x, alpha)");

== Argument d'entrée

/ x: vecteur ou matrice reel non vide de valeurs finies dans l'intervalle ouvert (0, 1) : donnees observees.
/ alpha: scalaire dans l'intervalle \[0, 1\] : niveau de signification. La valeur par defaut est 0.05.

== Argument de sortie

/ phat: tableau : estimations des parametres de forme de la loi beta.
/ pci: tableau : intervalles de confiance des estimations.

== Description

#strong[betafit]; estime les deux parametres de forme de la loi beta.


== Exemple

``````matlab
x = [0.12 0.2 0.35 0.5 0.7 0.85];
[phat, pci] = betafit(x);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.betalike>)[betalike];, #nlink(<statistics:2_probability_distributions.betapdf>)[betapdf];, #nlink(<statistics:2_probability_distributions.betacdf>)[betacdf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
