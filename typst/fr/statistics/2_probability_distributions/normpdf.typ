#import "../nelson_help.typ": *

= normpdf <statistics:2_probability_distributions.normpdf>

Densité de probabilité normale

== Syntaxe

- #raw("y = normpdf(x)");
- #raw("y = normpdf(x, mu)");
- #raw("y = normpdf(x, mu, sigma)");

== Argument d'entrée

/ x: valeur scalaire ou tableau : valeurs auxquelles évaluer la densité.
/ mu: valeur scalaire, 0 (par défaut) ou tableau : moyenne.
/ sigma: valeur scalaire positive, 1 (par défaut) ou tableau de valeurs positives : écart-type.

== Argument de sortie

/ y: valeur scalaire ou tableau : valeurs de la densité.

== Description

#strong[normpdf]; calcule la fonction de densité de probabilité de la loi normale (gaussienne).

 La formule générale pour la densité de la loi normale est :

 #latex("f(x|\\mu,\\sigma^2) = \\frac{1}{\\sigma\\sqrt{2\\pi}} e^{-\\frac{(x-\\mu)^2}{2\\sigma^2}}"); où

 #latex("\\mu"); est la moyenne et

 #latex("\\sigma^2"); est la variance.

 Pour la loi normale centrée-réduite (

 #latex("\\mu = 0, \\sigma = 1"); ) :

 #latex("\\phi(x) = \\frac{1}{\\sqrt{2\\pi}} e^{-\\frac{x^2}{2}}");
== Fonction(s) utilisée(s)

exp sqrt

== Bibliographie

Evans, M., N. Hastings, and B. Peacock. Statistical Distributions. 2nd ed. Hoboken, NJ: John Wiley and Sons, Inc., 1993.

== Exemple

``````matlab
x = [-0.2, -0.1, 0, 0.1, 0.2];
    R = normpdf(x);

    x = [-0.2, -0.1, 0, 0.1, 0.2];
    R = normpdf(x, 2, 1);

    R = normpdf(0, [-0.2, -0.1, 0, 0.1, 0.2], 1);
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.mean>)[mean];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
