#import "nelson_help.typ": *

= optim.options.SolverOptions <optimization:optim.options.SolverOptions>

Objet d'options de solveur.

== Syntaxe

- #raw("options = optimoptions(solver)");
- #raw("options = optimoptions(problem)");

== Argument d'entrée

/ solver: nom de solveur ou objet probleme utilise par optimoptions.
/ Name, Value: noms et valeurs d'options du solveur.

== Argument de sortie

/ options: objet d'options de solveur.

== Description

optim.options.SolverOptions stocke les valeurs d'options de solveur creees par optimoptions.

 L'objet est passe aux solveurs d'optimisation ou a solve via le flux problem-based.


== Fonction(s) utilisée(s)

optimoptions

== Exemple

Creer des options pour fminsearch.

``````matlab
opts = optimoptions('fminsearch', 'Display', 'off')
``````


== Voir aussi

#nlink(<optimization:optimoptions>)[optimoptions];, #nlink(<optimization:solve>)[solve];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
