#import "nelson_help.typ": *

= optimoptions <optimization:optimoptions>

Créer des options de solveur.

== Syntaxe

- #raw("options = optimoptions(solver)");
- #raw("options = optimoptions(solver, name, value)");

== Argument d'entrée

/ solver: nom de solveur, function handle ou problème d'optimization.
/ name, value: paires nom-valeur d'options.

== Argument de sortie

/ options: objet d'options du solveur.

== Description

#strong[optimoptions]; valide les noms d'options pour le solveur choisi et retourne un objet convertible en structure pour les solveurs directs.


== Fonction(s) utilisée(s)

optimset

== Bibliographie

P. E. Gill, W. Murray and M. H. Wright, Practical Optimization, Academic Press, 1981.

== Exemple

``````matlab
opts = optimoptions('fsolve', 'TolFun', 1e-8);
[x, fval] = fsolve(@(x) x - 3, 0, opts)

``````


== Voir aussi

#nlink(<optimization:optimset>)[optimset];, #nlink(<optimization:optimget>)[optimget];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
