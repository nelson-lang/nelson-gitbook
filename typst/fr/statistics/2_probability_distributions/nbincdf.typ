#import "../nelson_help.typ": *

= nbincdf <statistics:2_probability_distributions.nbincdf>

Fonction de repartition binomiale negative

== Syntaxe

- #raw("pout = nbincdf(x, r, p)");
- #raw("pout = nbincdf(x, r, p, 'upper')");

== Argument d'entrée

/ x: tableau numerique reel : nombre d'echecs.
/ r: scalaire positif ou tableau : nombre de succes.
/ p: scalaire ou tableau dans l'intervalle \[0, 1\] : probabilite de succes.

== Argument de sortie

/ pout: probabilites cumulees.

== Description

#strong[nbincdf]; calcule les probabilites cumulees de la loi binomiale negative.


== Exemple

``````matlab
x = 0:5;
pout = nbincdf(x, 3, 0.4);
``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
