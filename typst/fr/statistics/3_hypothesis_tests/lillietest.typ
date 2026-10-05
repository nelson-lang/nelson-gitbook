#import "../nelson_help.typ": *

= lillietest <statistics:3_hypothesis_tests.lillietest>

Test d'adequation de Lilliefors.

== Syntaxe

- #raw("h = lillietest(x)");
- #raw("h = lillietest(x, Name, Value)");
- #raw("[h, p] = lillietest(...)");
- #raw("[h, p, kstat, critval] = lillietest(...)");

== Description

#strong[lillietest]; effectue un test d'adequation bilateral de Lilliefors avec parametres estimes a partir de l'echantillon. Les observations #strong[NaN]; sont omises.

 Les arguments nom-valeur incluent #strong[Alpha];, #strong[Distribution]; et #strong[MCTol];. Les distributions prises en charge sont normal, exponential et extreme value. #strong[MCTol]; est accepte pour la compatibilite de syntaxe; cette implementation utilise une approximation deterministe.


== Exemple

``````matlab
x = [-1 -0.5 0 0.5 1];
[h, p, kstat, critval] = lillietest(x)
``````


== Voir aussi

#nlink(<statistics:3_hypothesis_tests.jbtest>)[jbtest];, #nlink(<statistics:3_hypothesis_tests.kstest>)[kstest];, #nlink(<statistics:3_hypothesis_tests.chi2gof>)[chi2gof];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
