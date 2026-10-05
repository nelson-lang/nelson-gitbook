#import "nelson_help.typ": *

= nelson.ode.options.CVODESNonstiff <ode_solvers:nelson.ode.options.CVODESNonstiff>

Objet d'options pour le solveur CVODES Adams optionnel.

== Syntaxe

- #raw("options = nelson.ode.options.CVODESNonstiff()");
- #raw("options = nelson.ode.options.CVODESNonstiff(nom, valeur)");

== Description

#strong[nelson.ode.options.CVODESNonstiff]; cree un objet d'options pour la valeur de solveur #strong['cvodesnonstiff']; utilisee par le workflow objet #strong[ode];.

 

#table(
  columns: 3,
  [Groupe d'options], [Noms], [Role], 
  [Pas et tolerances], [#strong[InitialStep];, #strong[MaxStep];, #strong[MinStep];, #strong[RelTol];, #strong[AbsTol];, #strong[MaxOrder];], [Controle l'integration Adams adaptative.], 
  [Sortie], [#strong[Refine];, #strong[OutputFcn];, #strong[OutputSelection];], [Choisit les points retournes et les callbacks de sortie optionnels.], 
  [Algebre lineaire], [#strong[LinearSolver];, #strong[Preconditioner];], [Choisit le support dense, iteratif ou sparse disponible et le preconditionnement.], 
  [Disponibilite], [#strong['cvodesnonstiff'];], [Utilise le backend Adams optionnel quand il est compile et active.], 
)
 Cette valeur de solveur est disponible uniquement quand Nelson est construit avec le backend optionnel SUNDIALS. Elle utilise CVODES avec la methode Adams pour les problemes EDO standards non raides.

 Les options prises en charge incluent #strong[InitialStep];, #strong[MaxStep];, #strong[MinStep];, #strong[RelTol];, #strong[AbsTol];, #strong[Refine];, #strong[NormControl];, #strong[OutputFcn];, #strong[OutputSelection];, #strong[Vectorization];, #strong[MaxOrder];, #strong[LinearSolver]; et #strong[Preconditioner];. #strong[OutputFcn]; est appelee sur les points de sortie retournes par le backend. #strong[LinearSolver]; accepte les valeurs SUNDIALS denses, iteratives et directes creuses optionnelles quand la bibliotheque correspondante est disponible. #strong[Preconditioner]; accepte #strong['auto'];, #strong['none'];, #strong['jacobi'];, #strong['banded']; ou #strong['ilu0'];. Avec un #strong[JPattern]; creux, #strong['ilu0']; construit un preconditionneur LU incomplet creux compact sans workspace dense.


== Exemple

Creer un probleme CVODES non raide.

``````matlab
options = nelson.ode.options.CVODESNonstiff('RelTol', 1e-6);
problem = ode('ODEFcn', @(t,y) -y, 'InitialValue', 1, ...
  'SolverOptions', options);
result = solve(problem, 0, 1)
``````


== Voir aussi

#nlink(<ode_solvers:ode>)[ode];, #nlink(<ode_solvers:nelson.ode.options.CVODESStiff>)[nelson.ode.options.CVODESStiff];, #nlink(<ode_solvers:nelson.ode.options.IDAS>)[nelson.ode.options.IDAS];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
