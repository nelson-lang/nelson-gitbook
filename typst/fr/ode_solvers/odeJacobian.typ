#import "nelson_help.typ": *

= odeJacobian <ode_solvers:odeJacobian>

Description de jacobien pour solveurs EDO.

== Syntaxe

- #raw("J = odeJacobian(value)");
- #raw("J = odeJacobian(value, nom, valeur)");
- #raw("J = odeJacobian(nom, valeur)");

== Description

#strong[odeJacobian]; stocke une fonction, une matrice ou un motif de differences finies pour le flux objet EDO.

 

#table(
  columns: 3,
  [Objet], [Role], [Utilise par], 
  [#strong[odeJacobian];], [Stocke une definition reutilisable pour le workflow objet #strong[ode];.], [La propriete correspondante de #strong[ode]; et #strong[solve];.], 
  [Validation], [Verifie les noms et formes supportes au moment de la construction.], [Les tests et erreurs restent explicites avant integration.], 
)
 Les proprietes publiques sont #strong[Jacobian]; et #strong[SparsityPattern];. L'alias compatible #strong[Pattern]; est accepte par le constructeur. L'indication compatible #strong[Constant]; est aussi acceptee et transmise aux options du solveur.


== Exemples

``````matlab
J = odeJacobian(-1)
``````

Motif de jacobien pour le flux objet.

``````matlab
J = odeJacobian('SparsityPattern', [1 0; 0 1]);
problem = ode('ODEFcn', @(t,y) [-10*y(1); -20*y(2)], 'InitialValue', [1; 2], 'Jacobian', J);
result = solve(problem, 0, 0.2)
``````

Indication de jacobien constant.

``````matlab
J = odeJacobian(-25, 'Constant', 'on');
problem = ode('ODEFcn', @(t,y) -25*y, 'InitialValue', 1, 'Jacobian', J);
result = solve(problem, 0, 0.2)
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
