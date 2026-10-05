#import "nelson_help.typ": *

= tutoriel objet edo <ode_solvers:7_ode_object_workflow_tutorial>

Definir et resoudre des problemes EDO avec des objets.

== Description

La classe #strong[ode]; stocke une definition de probleme : equation, etat initial, parametres, evenements, matrice de masse, Jacobien et options de solveur.

 

#table(
  columns: 2,
  [Propriete], [Role], 
  [#strong[ODEFcn];, #strong[InitialValue];], [Definit l'equation differentielle et l'etat initial.], 
  [#strong[Solver];, #strong[SolverOptions];], [Selectionne la methode d'integration et ses options.], 
  [#strong[EventDefinition];, #strong[MassMatrix];, #strong[Jacobian];], [Ajoute evenements, matrice de masse ou jacobien.], 
  [#strong[Sensitivity];, #strong[DelayDefinition];], [Ajoute sensibilites ou retards quand le workflow choisi le permet.], 
)
 Appelez #strong[solve]; pour obtenir un objet resultat, ou #strong[solutionFcn]; pour obtenir une fonction d'interpolation et l'objet de resultat.


== Exemples

Creer un objet probleme reutilisable.

``````matlab
problem = ode('ODEFcn', @(t,y,rate) -rate * y, ...
  'InitialValue', 1, 'Parameters', {2});
result = solve(problem, 0, 1)
``````

Utiliser solutionFcn pour interpoler.

``````matlab
problem = ode('ODEFcn', @(t,y) -y, 'InitialValue', 1);
[f, result] = solutionFcn(problem, 0, 1);
f(0.5)
``````


== Voir aussi

#nlink(<ode_solvers:ode>)[ode];, #nlink(<ode_solvers:odeset>)[odeset];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
