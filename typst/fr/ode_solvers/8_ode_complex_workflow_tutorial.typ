#import "nelson_help.typ": *

= tutoriel edo complexe <ode_solvers:8_ode_complex_workflow_tutorial>

Resoudre des problemes EDO objet avec des etats complexes.

== Description

Utilisez #strong[SeparateComplexParts]; avec le workflow objet quand une equation est ecrite avec des etats complexes mais que l'integration doit avancer les parties reelles et imaginaires separement en interne.

 

#table(
  columns: 3,
  [Mode], [Reglage], [Comportement], 
  [Complexe natif], [#strong[SeparateComplexParts]; \= #strong['off'];], [Utilise les valeurs complexes directement quand le solveur choisi les supporte.], 
  [Systeme reel separe], [#strong[SeparateComplexParts]; \= #strong['on'];], [Integre les parties reelles et imaginaires comme un systeme reel.], 
  [Forme retournee], [Forme de l'etat initial original.], [Les resultats reprennent la disposition de l'etat utilisateur.], 
)
 Les fonctions utilisateur recoivent des valeurs complexes. L'objet resultat retourne conserve aussi des tableaux complexes #strong[Solution]; et #strong[EventSolution];.

 Le meme workflow prend en charge l'interpolation avec #strong[deval];, les objets d'evenement, les fonctions de sortie, les matrices de masse, les jacobiens et les equations totalement implicites.


== Exemples

Resoudre un probleme complexe scalaire.

``````matlab
problem = ode('ODEFcn', @(t,y) y .* t + 2 * 1i, ...
  'InitialValue', 1 + 1i, ...
  'SeparateComplexParts', 'on');
result = solve(problem, 0, 2);
value = result.Solution(:, length(result.Time))
``````

Interpoler un resultat complexe.

``````matlab
problem = ode('ODEFcn', @(t,y) 1i * y, ...
  'InitialValue', 1, ...
  'SeparateComplexParts', 'on');
result = solve(problem, 0, 1);
yhalf = deval(result, 0.5)
``````

Arreter sur un evenement d'etat complexe.

``````matlab
event = odeEvent('EventFcn', @(t,y) imag(y) - 0.5, ...
  'Response', 'stop');
problem = ode('ODEFcn', @(t,y) 1 + 1i, ...
  'InitialValue', 0, ...
  'SeparateComplexParts', 'on', ...
  'EventDefinition', event);
result = solve(problem, 0, 1);
result.EventSolution
``````


== Voir aussi

#nlink(<ode_solvers:ode>)[ode];, #nlink(<ode_solvers:odeEvent>)[odeEvent];, #nlink(<ode_solvers:deval>)[deval];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
