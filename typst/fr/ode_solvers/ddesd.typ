#import "nelson_help.typ": *

= ddesd <ode_solvers:ddesd>

Resout des equations a temps retardes dependants de l'etat.

== Syntaxe

- #raw("sol = ddesd(ddefun, delays, history, tspan)");
- #raw("sol = ddesd(ddefun, delays, history, tspan, options)");

== Description

#strong[ddesd]; resout des equations a retard ou #strong[delays(t,y)]; retourne des temps retardes. Les vecteurs constants sont interpretes comme des lags positifs.

 

#table(
  columns: 2,
  [Element], [Details], 
  [Type de retard], [Temps retardes dependants de #strong[t]; et #strong[y];.], 
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

#nlink(<ode_solvers:dde23>)[dde23];, #nlink(<ode_solvers:ddensd>)[ddensd];, #nlink(<ode_solvers:deval>)[deval];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
