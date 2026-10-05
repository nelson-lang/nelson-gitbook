#import "nelson_help.typ": *

= ddeset <ode_solvers:ddeset>

Cree ou met a jour des options DDE.

== Syntaxe

- #raw("options = ddeset()");
- #raw("options = ddeset(name, value)");

== Description

#strong[ddeset]; cree une structure d'options pour les solveurs d'equations a retard. Elle accepte les options ODE communes ainsi que #strong[InitialY]; et #strong[Jumps];.

 

#table(
  columns: 2,
  [Option], [Role], 
  [#strong[InitialY];], [Valeur d historique initiale utilisee quand un historique structure n est pas fourni.], 
  [#strong[Jumps];], [Instants de discontinuite connus.], 
  [Options EDO communes], [Tolerances, pas, evenements et sorties partages avec #strong[odeset];.], 
)

== Exemple

Exemple complet des fonctionnalites DDE et BVP ajoutees.

``````matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/dde_bvp_added_features_example.m'])
``````


== Voir aussi

#nlink(<ode_solvers:ddeget>)[ddeget];, #nlink(<ode_solvers:dde23>)[dde23];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
