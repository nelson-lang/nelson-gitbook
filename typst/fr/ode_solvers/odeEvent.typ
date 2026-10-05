#import "nelson_help.typ": *

= odeEvent <ode_solvers:odeEvent>

Description d'evenement pour le flux objet EDO.

== Syntaxe

- #raw("E = odeEvent(eventFcn)");
- #raw("E = odeEvent(nom, valeur)");

== Description

#strong[odeEvent]; stocke une fonction d'evenement et sa politique pour le flux objet #strong[ode];.

 

#table(
  columns: 3,
  [Objet], [Role], [Utilise par], 
  [#strong[odeEvent];], [Stocke une definition reutilisable pour le workflow objet #strong[ode];.], [La propriete correspondante de #strong[ode]; et #strong[solve];.], 
  [Validation], [Verifie les noms et formes supportes au moment de la construction.], [Les tests et erreurs restent explicites avant integration.], 
)
 #strong[EventFcn]; peut retourner seulement les valeurs d'evenement. Dans ce cas #strong[Direction]; controle le sens de croisement et #strong[Response]; controle si le solveur continue ou s'arrete. Les fonctions d'evenement historiques qui retournent valeur, drapeaux terminaux et direction sont aussi acceptees. Ces trois sorties doivent contenir le meme nombre d'elements finis.

 #strong[Direction]; accepte #strong[both];, #strong[increasing]; ou #strong[decreasing];. #strong[Response]; accepte #strong[proceed];, #strong[stop]; ou #strong[callback];. Quand #strong[Response]; vaut #strong[callback];, #strong[CallbackFcn]; est appelee avec le temps d'evenement, la solution d'evenement, l'indice d'evenement et les parametres optionnels du probleme. Elle peut retourner un drapeau d'arret scalaire et une solution d'evenement mise a jour.


== Exemples

Arreter quand la solution atteint un demi.

``````matlab
E = odeEvent('EventFcn', @(t,y) y - 0.5, ...
  'Direction', 'increasing', ...
  'Response', 'stop');
problem = ode('ODEFcn', @(t,y) 1, 'InitialValue', 0, 'EventDefinition', E);
result = solve(problem, 0, 1)
``````

Appeler un callback au point d'evenement.

``````matlab
function [stop, y] = myEventCallback(t, y, index)
  stop = true;
end
E = odeEvent('EventFcn', @(t,y) y - 0.5, ...
  'Response', 'callback', ...
  'CallbackFcn', @myEventCallback);
problem = ode('ODEFcn', @(t,y) 1, 'InitialValue', 0, 'EventDefinition', E);
result = solve(problem, 0, 1)
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
