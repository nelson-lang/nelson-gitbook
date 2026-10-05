#import "../nelson_help.typ": *

= randsample <statistics:2_probability_distributions.randsample>

Echantillon aleatoire depuis une population.

== Syntaxe

- #raw("y = randsample(n, k)");
- #raw("y = randsample(population, k)");
- #raw("y = randsample(..., replacement)");
- #raw("y = randsample(population, k, true, w)");

== Description

#strong[randsample]; tire des valeurs avec le generateur aleatoire de Nelson. Le tirage pondere est pris en charge avec remise.


== Fonction(s) utilisée(s)

rng bootstrp

== Exemples

Tirer un echantillon reproductible sans remise.

``````matlab
rng(10);
y = randsample(10, 4)
``````

Tirer un echantillon pondere avec remise.

``````matlab
population = [10 20 30];
w = [0 0 1];
y = randsample(population, 5, true, w)
``````

