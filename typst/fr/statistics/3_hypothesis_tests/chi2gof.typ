#import "../nelson_help.typ": *

= chi2gof <statistics:3_hypothesis_tests.chi2gof>

Test d'adequation du chi-carre.

== Syntaxe

- #raw("h = chi2gof(x)");
- #raw("h = chi2gof(x, Name, Value)");
- #raw("[h, p, stats] = chi2gof(...)");

== Description

#strong[chi2gof]; effectue un test d'adequation du chi-carre pour un vecteur numerique reel. Les observations non finies et les frequences non positives ou non finies sont omises.

 Les arguments nom-valeur incluent #strong[Alpha];, #strong[NBins];, #strong[Ctrs];, #strong[Edges];, #strong[CDF];, #strong[Expected];, #strong[Frequency];, #strong[NParams]; et #strong[EMin];. #strong[CDF]; peut etre une matrice a deux colonnes ou un handle de fonction.

 La sortie #strong[stats]; contient #strong[chi2stat];, #strong[df];, #strong[edges];, #strong[O]; et #strong[E];.


== Exemple

``````matlab
x = norminv(((1:100) - 0.5) / 100);
[h, p, stats] = chi2gof(x)
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.chi2cdf>)[chi2cdf];, #nlink(<statistics:3_hypothesis_tests.kstest>)[kstest];, #nlink(<statistics:1_descriptive_statistics_visualization.crosstab>)[crosstab];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
