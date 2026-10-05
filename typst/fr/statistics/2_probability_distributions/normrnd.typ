#import "../nelson_help.typ": *

= normrnd <statistics:2_probability_distributions.normrnd>

Nombres aleatoires normaux

== Syntaxe

- #raw("r = normrnd(mu, sigma)");
- #raw("r = normrnd(mu, sigma, sz)");
- #raw("r = normrnd(mu, sigma, sz1, ..., szN)");

== Argument d'entrée

/ mu: scalaire reel ou tableau : moyenne.
/ sigma: scalaire reel ou tableau : ecart-type.
/ sz: vecteur de taille ou scalaires de taille pour la sortie.

== Argument de sortie

/ r: tableau : valeurs aleatoires.

== Description

#strong[normrnd]; genere des nombres aleatoires selon des lois normales avec le generateur global de Nelson.

 Les parametres scalaires sont etendus a la taille demandee. Les ecarts-types negatifs produisent des valeurs NaN.


== Exemple

``````matlab
rng(0);
r = normrnd(0, 1, 3, 4);
r2 = normrnd([0 10], [1 2]);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.normcdf>)[normcdf];, #nlink(<statistics:2_probability_distributions.norminv>)[norminv];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
