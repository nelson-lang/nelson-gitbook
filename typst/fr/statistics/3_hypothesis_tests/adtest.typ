#import "../nelson_help.typ": *

= adtest <statistics:3_hypothesis_tests.adtest>

Test d'adequation d'Anderson-Darling.

== Syntaxe

- #raw("h = adtest(x)");
- #raw("h = adtest(x, Name, Value)");
- #raw("[h, p] = adtest(...)");
- #raw("[h, p, adstat, cv] = adtest(...)");

== Description

#strong[adtest]; effectue un test d'adequation d'Anderson-Darling. Les observations #strong[NaN]; sont omises.

 Les arguments nom-valeur incluent #strong[Distribution];, #strong[Alpha];, #strong[MCTol]; et #strong[Asymptotic];. Les familles de distributions prises en charge sont norm, exp, ev, logn et weibull. #strong[MCTol]; est accepte pour la compatibilite de syntaxe; cette implementation utilise une approximation deterministe.


== Exemple

``````matlab
x = [1 2 3 4 5];
[h, p, adstat, cv] = adtest(x)
``````


== Voir aussi

#nlink(<statistics:3_hypothesis_tests.jbtest>)[jbtest];, #nlink(<statistics:3_hypothesis_tests.lillietest>)[lillietest];, #nlink(<statistics:3_hypothesis_tests.kstest>)[kstest];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
