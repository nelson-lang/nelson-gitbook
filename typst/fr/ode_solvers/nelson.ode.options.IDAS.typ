#import "nelson_help.typ": *

= nelson.ode.options.IDAS <ode_solvers:nelson.ode.options.IDAS>

Objet d'options pour le solveur IDAS BDF optionnel.

== Syntaxe

- #raw("options = nelson.ode.options.IDAS()");
- #raw("options = nelson.ode.options.IDAS(nom, valeur)");

== Description

#strong[nelson.ode.options.IDAS]; cree un objet d'options pour la valeur de solveur #strong['idas']; utilisee par le workflow objet #strong[ode];.

 

#table(
  columns: 3,
  [Groupe d'options], [Noms], [Role], 
  [Pas et tolerances], [#strong[InitialStep];, #strong[MaxStep];, #strong[MinStep];, #strong[RelTol];, #strong[AbsTol];, #strong[MaxOrder];], [Controle l'integration BDF adaptative pour equations residuelles.], 
  [Conditions initiales], [#strong[ComputeConsistentInitialConditions];], [Demande des #strong[y0]; et #strong[yp0]; coherents pour les problemes totalement implicites.], 
  [Algebre lineaire], [#strong[LinearSolver];, #strong[Preconditioner];, #strong[Jacobian];, #strong[JPattern];], [Donne la structure du systeme residuel et les indications de preconditionnement.], 
  [Disponibilite], [#strong['idas'];], [Utilise le backend totalement implicite optionnel quand il est compile et active.], 
)
 Cette valeur de solveur est disponible uniquement quand Nelson est construit avec le backend optionnel SUNDIALS. Elle utilise IDAS avec la methode BDF pour les problemes residuels totalement implicites #strong[F(t,y,yp)\=0];.

 Les options prises en charge incluent #strong[InitialStep];, #strong[MaxStep];, #strong[MinStep];, #strong[RelTol];, #strong[AbsTol];, #strong[Refine];, #strong[NormControl];, #strong[OutputFcn];, #strong[OutputSelection];, #strong[Vectorization];, #strong[MaxOrder];, #strong[ComputeConsistentInitialConditions];, #strong[LinearSolver]; et #strong[Preconditioner];. #strong[OutputFcn]; est appelee sur les points de sortie retournes par le backend. #strong[LinearSolver]; accepte les valeurs SUNDIALS denses, iteratives et directes creuses optionnelles quand la bibliotheque correspondante est disponible. #strong[Preconditioner]; accepte #strong['auto'];, #strong['none'];, #strong['jacobi'];, #strong['banded']; ou #strong['ilu0'];. Avec un #strong[JPattern]; creux, #strong['ilu0']; construit un preconditionneur LU incomplet creux compact sans workspace dense.


== Exemple

Creer un probleme residuel IDAS.

``````matlab
options = nelson.ode.options.IDAS();
problem = ode('EquationType', 'fullyimplicit', ...
  'ODEFcn', @(t,y,yp) yp + y, ...
  'InitialValue', 1, ...
  'InitialSlope', -1, ...
  'SolverOptions', options);
result = solve(problem, 0, 1)
``````


== Voir aussi

#nlink(<ode_solvers:ode>)[ode];, #nlink(<ode_solvers:nelson.ode.options.CVODESNonstiff>)[nelson.ode.options.CVODESNonstiff];, #nlink(<ode_solvers:nelson.ode.options.CVODESStiff>)[nelson.ode.options.CVODESStiff];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
