#import "nelson_help.typ": *

= nelson.ode.options.ODE15i <ode_solvers:nelson.ode.options.ODE15i>

Objet d'options pour le solveur ode15i.

== Syntaxe

- #raw("options = nelson.ode.options.ODE15i()");
- #raw("options = nelson.ode.options.ODE15i(nom, valeur)");

== Description

#strong[nelson.ode.options.ODE15i]; cree une classe d'options compatible pour la valeur de solveur #strong['ode15i']; utilisee par le workflow objet #strong[ode];.

 

#table(
  columns: 3,
  [Groupe d'options], [Noms], [Role], 
  [Pas], [#strong[InitialStep];, #strong[MaxStep];, #strong[MinStep];], [Borne la selection adaptative du pas.], 
  [Controle d'erreur], [#strong[NormControl];], [Bascule entre un controle d'erreur par composante et par norme.], 
  [Methode], [#strong[MaxOrder];], [Borne l'ordre des formules de differentiation retrograde.], 
  [Conditions initiales], [#strong[ComputeConsistentInitialConditions];], [Demande des #strong[y0]; et #strong[yp0]; coherents avant l'integration.], 
  [Evaluation], [#strong[Vectorization];], [Declare la vectorisation de la fonction residuelle par rapport a #strong[y]; et #strong[yp];.], 
  [Sortie], [#strong[OutputFcn];, #strong[OutputSelection];], [Choisit les callbacks de sortie et les composantes retournees.], 
)
 La valeur de solveur #strong['ode15i']; utilise une methode implicite d'ordre variable pour les problemes residuels totalement implicites #strong[F(t,y,yp)\=0];, y compris les equations algebro-differentielles raides.

 Les proprietes prises en charge sont #strong[InitialStep];, #strong[MaxStep];, #strong[MinStep];, #strong[NormControl];, #strong[OutputFcn];, #strong[OutputSelection];, #strong[Vectorization];, #strong[MaxOrder]; et #strong[ComputeConsistentInitialConditions];. #strong[InitialStep];, #strong[MaxStep]; et #strong[MinStep]; sont des scalaires positifs bornant le pas adaptatif ; leur valeur par defaut est vide, ce qui laisse le solveur les choisir automatiquement. #strong[NormControl]; accepte #strong['on']; ou #strong['off']; (par defaut #strong['off'];) et active un controle d'erreur base sur la norme de la solution au lieu d'un controle par composante. #strong[Vectorization]; est un tableau de cellules a deux elements tel que {#strong['off'];, #strong['off'];} (la valeur par defaut) declarant la vectorisation de la fonction residuelle par rapport a #strong[y]; et #strong[yp]; ; une seule valeur #strong['on']; ou #strong['off']; s'applique aux deux arguments. #strong[MaxOrder]; est un entier entre 1 et 5 (par defaut 5) bornant l'ordre des formules. #strong[ComputeConsistentInitialConditions]; est un scalaire logique (par defaut #strong[true];) ; quand il est active, le solveur ajuste la valeur initiale et la pente initiale pour que le residu soit coherent a l'instant initial. #strong[OutputFcn]; est un handle de fonction appele sur chaque point de sortie (par defaut vide). #strong[OutputSelection]; est un vecteur d'indices selectionnant les composantes de la solution transmises a la fonction de sortie (par defaut vide, toutes les composantes). La valeur #strong[Refine]; par defaut pour ce solveur est 1.


== Exemple

Creer un probleme residuel totalement implicite resolu avec les options ode15i.

``````matlab
options = nelson.ode.options.ODE15i('MaxOrder', 4);
problem = ode('EquationType', 'fullyimplicit', ...
  'ODEFcn', @(t,y,yp) yp + y, ...
  'InitialValue', 1, ...
  'InitialSlope', -1, ...
  'SolverOptions', options);
result = solve(problem, 0, 1)
``````


== Voir aussi

#nlink(<ode_solvers:ode>)[ode];, #nlink(<ode_solvers:ode15i>)[ode15i];, #nlink(<ode_solvers:nelson.ode.options.ODE15s>)[nelson.ode.options.ODE15s];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
