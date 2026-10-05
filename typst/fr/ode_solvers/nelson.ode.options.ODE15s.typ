#import "nelson_help.typ": *

= nelson.ode.options.ODE15s <ode_solvers:nelson.ode.options.ODE15s>

Objet d'options pour le solveur ode15s.

== Syntaxe

- #raw("options = nelson.ode.options.ODE15s()");
- #raw("options = nelson.ode.options.ODE15s(nom, valeur)");

== Description

#strong[nelson.ode.options.ODE15s]; cree une classe d'options compatible pour la valeur de solveur #strong['ode15s']; utilisee par le workflow objet #strong[ode];.

 

#table(
  columns: 3,
  [Groupe d'options], [Noms], [Role], 
  [Pas], [#strong[InitialStep];, #strong[MaxStep];, #strong[MinStep];], [Borne la selection adaptative du pas.], 
  [Controle d'erreur], [#strong[NormControl];], [Bascule entre un controle d'erreur par composante et par norme.], 
  [Methode], [#strong[BDF];, #strong[MaxOrder];], [Selectionne les formules de differentiation retrograde et borne l'ordre de la methode.], 
  [Evaluation], [#strong[Vectorization];], [Declare que la fonction EDO accepte des matrices d'etats.], 
  [Sortie], [#strong[OutputFcn];, #strong[OutputSelection];], [Choisit les callbacks de sortie et les composantes retournees.], 
)
 La valeur de solveur #strong['ode15s']; utilise une methode multipas implicite pour les problemes raides et les equations algebro-differentielles avec matrice de masse.

 Les proprietes prises en charge sont #strong[InitialStep];, #strong[MaxStep];, #strong[MinStep];, #strong[NormControl];, #strong[OutputFcn];, #strong[OutputSelection];, #strong[Vectorization];, #strong[BDF]; et #strong[MaxOrder];. #strong[InitialStep];, #strong[MaxStep]; et #strong[MinStep]; sont des scalaires positifs bornant le pas adaptatif ; leur valeur par defaut est vide, ce qui laisse le solveur les choisir automatiquement. #strong[NormControl]; accepte #strong['on']; ou #strong['off']; (par defaut #strong['off'];) et active un controle d'erreur base sur la norme de la solution au lieu d'un controle par composante. #strong[Vectorization]; accepte #strong['on']; ou #strong['off']; (par defaut #strong['off'];) et declare que la fonction EDO peut evaluer plusieurs colonnes d'etats a la fois. #strong[BDF]; accepte #strong['on']; ou #strong['off']; (par defaut #strong['off'];) et selectionne les formules de differentiation retrograde au lieu des formules de differentiation numerique par defaut. #strong[MaxOrder]; est un entier entre 1 et 5 (par defaut 5) bornant l'ordre des formules. #strong[OutputFcn]; est un handle de fonction appele sur chaque point de sortie (par defaut vide). #strong[OutputSelection]; est un vecteur d'indices selectionnant les composantes de la solution transmises a la fonction de sortie (par defaut vide, toutes les composantes). La valeur #strong[Refine]; par defaut pour ce solveur est 1.


== Exemple

Creer un probleme raide resolu avec les options ode15s.

``````matlab
options = nelson.ode.options.ODE15s('BDF', 'on', 'MaxOrder', 4);
problem = ode('ODEFcn', @(t,y) -1000 * (y - cos(t)), 'InitialValue', 0, ...
  'SolverOptions', options);
result = solve(problem, 0, 1)
``````


== Voir aussi

#nlink(<ode_solvers:ode>)[ode];, #nlink(<ode_solvers:ode15s>)[ode15s];, #nlink(<ode_solvers:nelson.ode.options.ODE23s>)[nelson.ode.options.ODE23s];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
