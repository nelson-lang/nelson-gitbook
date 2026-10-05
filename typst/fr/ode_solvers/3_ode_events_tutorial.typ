#import "nelson_help.typ": *

= tutoriel evenements edo <ode_solvers:3_ode_events_tutorial>

Localiser des evenements pendant une integration EDO.

== Description

Utilisez l'option #strong[Events]; pour arreter ou enregistrer les instants ou une fonction evenement passe par zero. Une fonction evenement retourne les tableaux value, terminal et direction.

 

#table(
  columns: 2,
  [Sortie evenement], [Signification], 
  [#strong[te]; ou #strong[xe];], [Valeur du temps ou de la variable independante ou l'evenement est localise.], 
  [#strong[ye];], [Solution au point d'evenement.], 
  [#strong[ie];], [Indice de la fonction d'evenement qui traverse zero.], 
  [#strong[isterminal];], [Les valeurs non nulles arretent l'integration.], 
)
 Utilisez les evenements terminaux pour arreter a un seuil et les evenements non terminaux pour collecter des instants de diagnostic.


== Exemples

Arreter quand l'etat atteint un demi.

``````matlab
function [value,isterminal,direction] = localHalfEvent(t, y)
  value = y - 0.5;
  isterminal = 1;
  direction = 1;
end
options = odeset('Events', @localHalfEvent);
[t, y, te, ye, ie] = ode45(@(t,y) 1, [0 1], 0, options)
``````

Utiliser un objet evenement.

``````matlab
event = odeEvent('EventFcn', @(t,y) y - 0.5, 'Response', 'stop');
problem = ode('ODEFcn', @(t,y) 1, 'InitialValue', 0, 'EventDefinition', event);
result = solve(problem, 0, 1)
``````


== Voir aussi

#nlink(<ode_solvers:odeset>)[odeset];, #nlink(<ode_solvers:odeEvent>)[odeEvent];, #nlink(<ode_solvers:ode45>)[ode45];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
