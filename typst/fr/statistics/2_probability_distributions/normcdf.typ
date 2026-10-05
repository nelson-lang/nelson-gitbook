#import "../nelson_help.typ": *

= normcdf <statistics:2_probability_distributions.normcdf>

Fonction de repartition normale

== Syntaxe

- #raw("p = normcdf(x)");
- #raw("p = normcdf(x, mu, sigma)");
- #raw("p = normcdf(..., 'upper')");
- #raw("[p, pLo, pUp] = normcdf(x, mu, sigma, pCov)");
- #raw("[p, pLo, pUp] = normcdf(x, mu, sigma, pCov, alpha)");

== Argument d'entrée

/ x: scalaire reel ou tableau : valeurs ou evaluer la distribution.
/ mu: scalaire reel ou tableau, 0 par defaut : moyenne.
/ sigma: scalaire reel positif ou tableau, 1 par defaut : ecart-type.
/ pCov: matrice de covariance 2-par-2 pour les parametres estimes.
/ alpha: scalaire dans (0,1), 0.05 par defaut : niveau de signification.

== Argument de sortie

/ p: scalaire ou tableau : probabilites cumulees.
/ pLo: borne inferieure de confiance.
/ pUp: borne superieure de confiance.

== Description

#strong[normcdf]; evalue la fonction de repartition de la loi normale.

 Les scalaires sont etendus pour correspondre aux tableaux. Une entree en simple precision donne une sortie en simple precision.


== Exemple

``````matlab
x = [-2 -1 0 1 2];
p = normcdf(x);
upperTail = normcdf(x, 0, 1, 'upper');
[p, pLo, pUp] = normcdf(0, 0, 1, [0.04 0; 0 0.01]);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.normpdf>)[normpdf];, #nlink(<statistics:2_probability_distributions.norminv>)[norminv];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
