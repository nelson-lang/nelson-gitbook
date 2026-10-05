#import "nelson_help.typ": *

= nelson.ode.options.ODE23s <ode_solvers:nelson.ode.options.ODE23s>

Objet d'options pour le solveur ode23s.

== Syntaxe

- #raw("options = nelson.ode.options.ODE23s()");
- #raw("options = nelson.ode.options.ODE23s(nom, valeur)");

== Description

#strong[nelson.ode.options.ODE23s]; cree une classe d'options compatible pour la valeur de solveur #strong['ode23s']; utilisee par le workflow objet #strong[ode];.

 

#table(
  columns: 3,
  [Groupe d'options], [Noms], [Role], 
  [Pas], [#strong[InitialStep];, #strong[MaxStep];, #strong[MinStep];], [Borne la selection adaptative du pas.], 
  [Controle d'erreur], [#strong[NormControl];], [Bascule entre un controle d'erreur par composante et par norme.], 
  [Evaluation], [#strong[Vectorization];], [Declare que la fonction EDO accepte des matrices d'etats.], 
  [Sortie], [#strong[OutputFcn];, #strong[OutputSelection];], [Choisit les callbacks de sortie et les composantes retournees.], 
)
 La valeur de solveur #strong['ode23s']; utilise une methode de Rosenbrock modifiee d'ordre 2, efficace pour les problemes raides avec des tolerances grossieres.

 Les proprietes prises en charge sont #strong[InitialStep];, #strong[MaxStep];, #strong[MinStep];, #strong[NormControl];, #strong[OutputFcn];, #strong[OutputSelection]; et #strong[Vectorization];. #strong[InitialStep];, #strong[MaxStep]; et #strong[MinStep]; sont des scalaires positifs bornant le pas adaptatif ; leur valeur par defaut est vide, ce qui laisse le solveur les choisir automatiquement. #strong[NormControl]; accepte #strong['on']; ou #strong['off']; (par defaut #strong['off'];) et active un controle d'erreur base sur la norme de la solution au lieu d'un controle par composante. #strong[Vectorization]; accepte #strong['on']; ou #strong['off']; (par defaut #strong['off'];) et declare que la fonction EDO peut evaluer plusieurs colonnes d'etats a la fois. #strong[OutputFcn]; est un handle de fonction appele sur chaque point de sortie (par defaut vide). #strong[OutputSelection]; est un vecteur d'indices selectionnant les composantes de la solution transmises a la fonction de sortie (par defaut vide, toutes les composantes). La valeur #strong[Refine]; par defaut pour ce solveur est 1.


== Exemple

Creer un probleme raide resolu avec les options ode23s.

``````matlab
options = nelson.ode.options.ODE23s('MaxStep', 0.05);
problem = ode('ODEFcn', @(t,y) -50 * y, 'InitialValue', 1, ...
  'SolverOptions', options);
result = solve(problem, 0, 1)
``````


== Voir aussi

#nlink(<ode_solvers:ode>)[ode];, #nlink(<ode_solvers:ode23s>)[ode23s];, #nlink(<ode_solvers:nelson.ode.options.ODE15s>)[nelson.ode.options.ODE15s];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
