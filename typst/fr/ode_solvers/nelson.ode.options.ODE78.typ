#import "nelson_help.typ": *

= nelson.ode.options.ODE78 <ode_solvers:nelson.ode.options.ODE78>

Objet d'options pour le solveur ode78.

== Syntaxe

- #raw("options = nelson.ode.options.ODE78()");
- #raw("options = nelson.ode.options.ODE78(nom, valeur)");

== Description

#strong[nelson.ode.options.ODE78]; cree une classe d'options compatible pour la valeur de solveur #strong['ode78']; utilisee par le workflow objet #strong[ode];.

 

#table(
  columns: 3,
  [Groupe d'options], [Noms], [Role], 
  [Pas], [#strong[InitialStep];, #strong[MaxStep];, #strong[MinStep];], [Borne la selection adaptative du pas.], 
  [Controle d'erreur], [#strong[NormControl];], [Bascule entre un controle d'erreur par composante et par norme.], 
  [Sortie], [#strong[OutputFcn];, #strong[OutputSelection];], [Choisit les callbacks de sortie et les composantes retournees.], 
)
 La valeur de solveur #strong['ode78']; utilise une paire Runge-Kutta explicite d'ordre eleve (7,8), efficace pour les problemes non raides reguliers resolus avec des tolerances serrees.

 Les proprietes prises en charge sont #strong[InitialStep];, #strong[MaxStep];, #strong[MinStep];, #strong[NormControl];, #strong[OutputFcn]; et #strong[OutputSelection];. #strong[InitialStep];, #strong[MaxStep]; et #strong[MinStep]; sont des scalaires positifs bornant le pas adaptatif ; leur valeur par defaut est vide, ce qui laisse le solveur les choisir automatiquement. #strong[NormControl]; accepte #strong['on']; ou #strong['off']; (par defaut #strong['off'];) et active un controle d'erreur base sur la norme de la solution au lieu d'un controle par composante. #strong[OutputFcn]; est un handle de fonction appele sur chaque point de sortie (par defaut vide). #strong[OutputSelection]; est un vecteur d'indices selectionnant les composantes de la solution transmises a la fonction de sortie (par defaut vide, toutes les composantes). La valeur #strong[Refine]; par defaut pour ce solveur est 8.


== Exemple

Creer un probleme non raide resolu avec les options ode78.

``````matlab
options = nelson.ode.options.ODE78('InitialStep', 0.01);
problem = ode('ODEFcn', @(t,y) -y, 'InitialValue', 1, ...
  'SolverOptions', options);
result = solve(problem, 0, 1)
``````


== Voir aussi

#nlink(<ode_solvers:ode>)[ode];, #nlink(<ode_solvers:ode78>)[ode78];, #nlink(<ode_solvers:nelson.ode.options.ODE89>)[nelson.ode.options.ODE89];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
