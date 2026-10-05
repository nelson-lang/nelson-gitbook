#import "nelson_help.typ": *

= odeMassMatrix <ode_solvers:odeMassMatrix>

Description de matrice de masse pour solveurs EDO.

== Syntaxe

- #raw("M = odeMassMatrix(value)");
- #raw("M = odeMassMatrix(value, nom, valeur)");
- #raw("M = odeMassMatrix(nom, valeur)");

== Description

#strong[odeMassMatrix]; stocke une matrice de masse ou un callback de matrice de masse pour le flux objet EDO.

 

#table(
  columns: 3,
  [Objet], [Role], [Utilise par], 
  [#strong[odeMassMatrix];], [Stocke une definition reutilisable pour le workflow objet #strong[ode];.], [La propriete correspondante de #strong[ode]; et #strong[solve];.], 
  [Validation], [Verifie les noms et formes supportes au moment de la construction.], [Les tests et erreurs restent explicites avant integration.], 
)
 Les proprietes publiques sont #strong[MassMatrix];, #strong[Singular];, #strong[StateDependence]; et #strong[SparsityPattern];. Les alias compatibles #strong[MassSingular];, #strong[MStateDependence]; et #strong[MvPattern]; sont aussi acceptes par le constructeur.

 #strong[Singular]; accepte #strong[yes];, #strong[no]; ou #strong[maybe];. #strong[StateDependence]; accepte #strong[none];, #strong[weak]; ou #strong[strong];. #strong[SparsityPattern]; accepte une matrice carree numerique ou logique et est transmis aux options du solveur.

 Sans matrice de masse, les valeurs par defaut sont #strong[Singular\='maybe']; et #strong[StateDependence\='weak'];. Pour une matrice de masse numerique, Nelson deduit #strong[Singular]; et utilise #strong[StateDependence\='none']; sauf si des valeurs sont fournies explicitement.


== Exemples

``````matlab
M = odeMassMatrix(2)
``````

Matrice de masse dans le flux objet.

``````matlab
M = odeMassMatrix('MassMatrix', 2, 'Singular', 'no');
problem = ode('ODEFcn', @(t,y) -y, 'InitialValue', 1, 'MassMatrix', M);
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
