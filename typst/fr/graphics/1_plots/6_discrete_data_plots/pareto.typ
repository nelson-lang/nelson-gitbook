#import "../../nelson_help.typ": *

= pareto <graphics:1_plots.6_discrete_data_plots.pareto>

Afficher un diagramme de Pareto.

== Syntaxe

- #raw("pareto(y)");
- #raw("pareto(y, threshold)");
- #raw("pareto(y, labels)");
- #raw("pareto(y, labels, threshold)");
- #raw("pareto(parent, ...)");
- #raw("h = pareto(...)");

== Description

#strong[pareto]; trie des valeurs positives ou nulles par ordre decroissant, affiche les barres et superpose une ligne cumulative. #strong[threshold]; est un scalaire entre 0 et 1 qui controle le nombre de labels tries affiches.


== Exemple

Creer un diagramme de Pareto.

``````matlab
pareto([5 20 10], {'A', 'B', 'C'});
``````


#align(center)[#image("pareto_1.svg")]

== Voir aussi

#nlink(<graphics:1_plots.6_discrete_data_plots.bar>)[bar];, #nlink(<graphics:1_plots.1_line_plots.plot>)[plot];.
