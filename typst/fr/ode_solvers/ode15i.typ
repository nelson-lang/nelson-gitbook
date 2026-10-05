#import "nelson_help.typ": *

= ode15i <ode_solvers:ode15i>

Entree de solveur EDO implicite.

== Syntaxe

- #raw("[t, y] = ode15i(odefun, tspan, y0, yp0)");

== Description

#strong[ode15i]; resout les problemes residuels de la forme #strong[F(t,y,yp)\=0];.

 

#table(
  columns: 2,
  [Element], [Details], 
  [Forme du probleme], [Residu implicite #strong[F(t,y,yp)\=0];.], 
  [Entrees], [#strong[odefun];, #strong[tspan];, #strong[y0];, #strong[yp0];, et options creees avec #strong[odeset];.], 
  [Sorties], [Tableaux #strong[\[t,y\]]; ou structure #strong[sol]; avec pentes disponibles pour #strong[deval];.], 
  [Initialisation], [Utilisez #strong[decic]; pour ajuster des conditions initiales coherentes.], 
)

== Exemple

``````matlab
[t, y] = ode15i(@(t,y,yp) yp + y, [0 1], 1, -1)
``````


== Voir aussi

#nlink(<ode_solvers:ode15s>)[ode15s];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
