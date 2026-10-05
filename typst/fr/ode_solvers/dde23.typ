#import "nelson_help.typ": *

= dde23 <ode_solvers:dde23>

Resout des equations a retard constant.

== Syntaxe

- #raw("sol = dde23(ddefun, delays, history, tspan)");
- #raw("sol = dde23(ddefun, delays, history, tspan, options)");

== Description

#strong[dde23]; resout des equations a retard ou chaque retard est un lag positif constant. La fonction derivee est appelee comme #strong[f(t,y,z)];, avec les etats retardes en colonnes de #strong[z];.

 

#table(
  columns: 2,
  [Element], [Details], 
  [Type de retard], [Retards constants positifs.], 
  [Callback], [#strong[f(t,y,z)];], 
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

#nlink(<ode_solvers:ddesd>)[ddesd];, #nlink(<ode_solvers:ddensd>)[ddensd];, #nlink(<ode_solvers:ddeset>)[ddeset];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
