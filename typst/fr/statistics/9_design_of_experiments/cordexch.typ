#import "../nelson_help.typ": *

= cordexch <statistics:9_design_of_experiments.cordexch>

Plan D-optimal avec une interface de type echange de coordonnees.

== Syntaxe

- #raw("dCE = cordexch(nfactors, nruns)");
- #raw("[dCE, X] = cordexch(nfactors, nruns, modelspec)");

== Description

#strong[cordexch]; fournit une interface compatible echange de coordonnees adossee a l'implementation par echange de lignes.


== Fonction(s) utilisée(s)

rowexch candgen candexch rng

== Exemple

Creer un plan lineaire de trois essais pour deux facteurs.

``````matlab
rng(7);
[dCE, X] = cordexch(2, 3, 'linear', 'Display', 'off', 'AvoidDuplicates', true);
dCE
X
``````

