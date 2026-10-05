#import "../nelson_help.typ": *

= candgen <statistics:9_design_of_experiments.candgen>

Generer un ensemble candidat pour les plans.

== Syntaxe

- #raw("dC = candgen(nfactors)");
- #raw("[dC, C] = candgen(nfactors, modelspec)");

== Description

#strong[candgen]; genere un ensemble candidat factoriel complet a partir des bornes des facteurs et sa matrice de modele.


== Fonction(s) utilisée(s)

x2fx candexch rowexch cordexch

== Exemples

Generer un ensemble candidat factoriel complet et sa matrice de modele lineaire.

``````matlab
F = candgen(2)
[F, C] = candgen(2, 'linear')
``````

Utiliser des bornes explicites pour les facteurs.

``````matlab
bounds = [0 1 2; -1 1 1];
[F, C] = candgen(2, 'linear', 'Bounds', bounds);
size(F)
size(C)
``````

