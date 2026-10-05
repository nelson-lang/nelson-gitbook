#import "nelson_help.typ": *

= ode15s <ode_solvers:ode15s>

Entree de solveur EDO raide.

== Syntaxe

- #raw("[t, y] = ode15s(odefun, tspan, y0)");

== Description

#strong[ode15s]; fournit l'interface pour problemes raides avec le moteur interne partage.

 

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
[t, y] = ode15s(@(t,y) -20*y, [0 1], 1)
``````


== Voir aussi

#nlink(<ode_solvers:ode15i>)[ode15i];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
