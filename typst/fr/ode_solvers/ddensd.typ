#import "nelson_help.typ": *

= ddensd <ode_solvers:ddensd>

Resout des equations a retard neutres.

== Syntaxe

- #raw("sol = ddensd(ddefun, dely, delyp, history, tspan)");
- #raw("sol = ddensd(ddefun, dely, delyp, history, tspan, options)");

== Description

#strong[ddensd]; resout des equations a retard neutres. La fonction derivee est appelee comme #strong[f(t,y,z,zp)];, avec les etats et pentes retardes.

 

#table(
  columns: 2,
  [Element], [Details], 
  [Type de retard], [Retards neutres avec etats et pentes retardes.], 
  [Callback], [#strong[f(t,y,z,zp)];], 
  [Historique], [Scalaire, vecteur, structure de solution ou fonction selon la forme appelee.], 
  [Solution], [Structure #strong[sol]; avec #strong[x];, #strong[y];, #strong[yp];, #strong[solver]; et interpolation par #strong[deval];.], 
)

== Exemple

Exemple complet des fonctionnalites DDE et BVP ajoutees.

``````matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/dde_bvp_added_features_example.m'])
``````


== Voir aussi

#nlink(<ode_solvers:dde23>)[dde23];, #nlink(<ode_solvers:ddesd>)[ddesd];, #nlink(<ode_solvers:ddeset>)[ddeset];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
