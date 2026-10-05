#import "nelson_help.typ": *

= workflows EDO <ode_solvers:1_ode_workflows>

Exemples EDO et interface objet.

== Description

L'interface fonction retourne des tableaux ou une structure de solution. L'interface objet stocke le probleme dans un objet #strong[ode]; et retourne un objet resultat avec #strong[solve];.

 

#table(
  columns: 3,
  [Workflow], [Appels principaux], [Usage], 
  [Fonctions], [#strong[ode45];, #strong[ode15s];, #strong[ode15i];], [Scripts compacts qui retournent des tableaux ou une structure de solution.], 
  [Objet], [#strong[ode];, #strong[solve];, #strong[deval];], [Definitions de probleme reutilisables avec options et objets resultat.], 
  [Post-traitement], [#strong[deval];, #strong[odextend];], [Interpoler ou continuer une solution calculee.], 
)
 Utilisez une structure de solution avec #strong[deval]; pour interpoler et #strong[odextend]; pour prolonger une integration. Utilisez #strong[Events]; pour localiser les passages par zero, #strong[Mass]; pour les matrices de masse et #strong[Jacobian]; pour aider les solveurs raides.


== Exemples

Interface fonction avec interpolation.

``````matlab
sol = ode45(@(t,y) -y, [0 1], 1);
yhalf = deval(sol, 0.5)
``````

Interface objet.

``````matlab
problem = ode('ODEFcn', @(t,y) -y, 'InitialValue', 1);
result = solve(problem, 0, 1);
value = deval(result, 0.5)
``````

Sortie raffinee et statistiques.

``````matlab
options = odeset('Refine', 4, 'Stats', 'on');
[t, y] = ode45(@(t,y) y, [0 1], 1, options)
``````


== Voir aussi

#nlink(<ode_solvers:ode>)[ode];, #nlink(<ode_solvers:deval>)[deval];, #nlink(<ode_solvers:odextend>)[odextend];, #nlink(<ode_solvers:odeset>)[odeset];, #nlink(<ode_solvers:8_ode_complex_workflow_tutorial>)[tutoriel edo complexe];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
