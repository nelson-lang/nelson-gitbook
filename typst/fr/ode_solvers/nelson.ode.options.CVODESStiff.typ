#import "nelson_help.typ": *

= nelson.ode.options.CVODESStiff <ode_solvers:nelson.ode.options.CVODESStiff>

Objet d'options pour le solveur CVODES BDF optionnel.

== Syntaxe

- #raw("options = nelson.ode.options.CVODESStiff()");
- #raw("options = nelson.ode.options.CVODESStiff(nom, valeur)");

== Description

#strong[nelson.ode.options.CVODESStiff]; cree un objet d'options pour la valeur de solveur #strong['cvodesstiff']; utilisee par le workflow objet #strong[ode];.

 

#table(
  columns: 3,
  [Groupe d'options], [Noms], [Role], 
  [Pas et tolerances], [#strong[InitialStep];, #strong[MaxStep];, #strong[MinStep];, #strong[RelTol];, #strong[AbsTol];, #strong[MaxOrder];], [Controle l'integration BDF adaptative.], 
  [Sortie], [#strong[Refine];, #strong[OutputFcn];, #strong[OutputSelection];], [Choisit les points retournes et les callbacks de sortie optionnels.], 
  [Algebre lineaire], [#strong[LinearSolver];, #strong[Preconditioner];, #strong[Jacobian];, #strong[JPattern];], [Donne la structure du systeme raide et les indications de preconditionnement.], 
  [Disponibilite], [#strong['cvodesstiff'];], [Utilise le backend BDF optionnel quand il est compile et active.], 
)
 Cette valeur de solveur est disponible uniquement quand Nelson est construit avec le backend optionnel SUNDIALS. Elle utilise CVODES avec la methode BDF pour les problemes EDO standards raides et les problemes standards avec matrice de masse non singuliere.

 Les options prises en charge incluent #strong[InitialStep];, #strong[MaxStep];, #strong[MinStep];, #strong[RelTol];, #strong[AbsTol];, #strong[Refine];, #strong[NormControl];, #strong[OutputFcn];, #strong[OutputSelection];, #strong[Vectorization];, #strong[MaxOrder];, #strong[LinearSolver]; et #strong[Preconditioner];. #strong[OutputFcn]; est appelee sur les points de sortie retournes par le backend. #strong[LinearSolver]; accepte #strong['auto'];, #strong['dense'];, #strong['spgmr'];, #strong['spfgmr'];, #strong['spbcgs'];, #strong['sptfqmr'];, #strong['pcg']; ou #strong['klu']; quand la bibliotheque SUNDIALS correspondante est disponible. #strong[Preconditioner]; accepte #strong['auto'];, #strong['none'];, #strong['jacobi'];, #strong['banded']; ou #strong['ilu0'];. Avec un #strong[JPattern]; creux, #strong['ilu0']; construit un preconditionneur LU incomplet creux compact sans workspace dense.


== Exemple

Creer un probleme CVODES raide.

``````matlab
options = nelson.ode.options.CVODESStiff('MaxOrder', 5);
problem = ode('ODEFcn', @(t,y) -20 * y, 'InitialValue', 1, ...
  'SolverOptions', options);
result = solve(problem, 0, 1)
``````


== Voir aussi

#nlink(<ode_solvers:ode>)[ode];, #nlink(<ode_solvers:nelson.ode.options.CVODESNonstiff>)[nelson.ode.options.CVODESNonstiff];, #nlink(<ode_solvers:nelson.ode.options.IDAS>)[nelson.ode.options.IDAS];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
