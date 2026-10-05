#import "../nelson_help.typ": *

= jbtest <statistics:3_hypothesis_tests.jbtest>

Test de normalite de Jarque-Bera.

== Syntaxe

- #raw("h = jbtest(x)");
- #raw("h = jbtest(x, alpha)");
- #raw("h = jbtest(x, alpha, mctol)");
- #raw("[h, p, jbstat, critval] = jbtest(...)");

== Description

#strong[jbtest]; effectue un test de normalite de Jarque-Bera avec moyenne et variance inconnues. Les observations #strong[NaN]; sont omises.

 L'argument optionnel #strong[alpha]; definit le niveau de signification. L'argument optionnel #strong[mctol]; est accepte pour la compatibilite de syntaxe; cette implementation utilise l'approximation deterministe du chi-carre.


== Exemple

``````matlab
x = [1 2 3 4 5];
[h, p, jbstat, critval] = jbtest(x)
``````


== Voir aussi

#nlink(<statistics:3_hypothesis_tests.chi2gof>)[chi2gof];, #nlink(<statistics:3_hypothesis_tests.kstest>)[kstest];, #nlink(<statistics:2_probability_distributions.normcdf>)[normcdf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
