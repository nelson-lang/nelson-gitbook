#import "nelson_help.typ": *

= ode78 <ode_solvers:ode78>

Solveur EDO non raide haut ordre.

== Syntaxe

- #raw("[t, y] = ode78(odefun, tspan, y0)");

== Description

#strong[ode78]; expose une entree de solveur non raide avec le moteur adaptatif partage.

 

#table(
  columns: 2,
  [Element], [Details], 
  [Forme du probleme], [#strong[y' \= f(t,y)];, avec valeur initiale #strong[y0];.], 
  [Entrees], [#strong[odefun];, #strong[tspan];, #strong[y0];, et options creees avec #strong[odeset];.], 
  [Sorties], [#strong[\[t,y\]]; pour les tableaux ou #strong[sol]; pour une structure compatible avec #strong[deval]; et #strong[odextend];.], 
  [Evenements], [Les options #strong[Events]; renseignent #strong[te];, #strong[ye]; et #strong[ie]; ou les champs #strong[xe];, #strong[ye]; et #strong[ie]; de la structure.], 
)

== Exemple

``````matlab
[t, y] = ode78(@(t,y) -y, [0 1], 1)
``````


== Voir aussi

#nlink(<ode_solvers:ode89>)[ode89];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
