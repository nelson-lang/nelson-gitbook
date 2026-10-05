#import "nelson_help.typ": *

= ode <ode_solvers:ode>

Interface objet pour problemes EDO.

== Syntaxe

- #raw("problem = ode(nom, valeur)");
- #raw("result = solve(problem, tfinal)");
- #raw("result = solve(problem, t0, tfinal)");
- #raw("[f, data] = solutionFcn(problem, tfinal)");

== Description

#strong[ode]; stocke un probleme differentiel et les reglages utilises par #strong[solve]; et #strong[solutionFcn];.

 

#table(
  columns: 2,
  [Appel], [Role], 
  [#strong[solve(problem, tfinal)];], [Integre de #strong[InitialTime]; a #strong[tfinal];.], 
  [#strong[solve(problem, t0, tfinal)];], [Integre depuis #strong[t0];; ce temps de depart remplace #strong[InitialTime]; pour cet appel.], 
  [#strong[solutionFcn(problem, tfinal)];], [Retourne une fonction d'interpolation et l'objet resultat correspondant.], 
)
 Principales proprietes de l'objet:

 

#table(
  columns: 3,
  [Propriete], [Valeurs acceptees], [Effet], 
  [#strong[EquationType];], [#strong['standard'];, #strong['fullyimplicit'];], [#strong['standard']; utilise #strong[ODEFcn(t,y)];. #strong['fullyimplicit']; utilise des residus #strong[ODEFcn(t,y,yp)];.], 
  [#strong[Solver];], [#strong['auto'];, #strong['autoswitch'];, #strong['nonstiff'];, #strong['stiff'];, noms de solveurs], [Selectionne la methode d'integration. #strong['auto']; choisit selon le type de probleme. #strong['autoswitch']; peut redemarrer avec une methode raide quand une raideur est detectee.], 
  [#strong[SolverOptions];], [Objet d'options correspondant au solveur], [Stocke les tolerances, la fonction de sortie, les bornes de pas et les reglages propres au solveur.], 
  [#strong[Parameters];], [Vecteur numerique ou tableau de cellules], [Passe apres les arguments standards aux callbacks d'equation, d'evenement, de sortie et de reponse d'evenement. Un tableau de cellules est developpe en un argument par cellule.], 
  [#strong[SeparateComplexParts];], [#strong['off'];, #strong['on'];], [Avec #strong['on'];, les etats complexes sont integres via parties reelles et imaginaires separees, tandis que les resultats retournent a la forme complexe d'origine.], 
)
 Familles de solveurs:

 

#table(
  columns: 3,
  [Famille], [Valeurs de solveur], [Notes], 
  [Non raide], [#strong['ode23'];, #strong['ode45'];, #strong['ode78'];, #strong['ode89'];, #strong['ode113'];], [Pour les problemes explicites lisses.], 
  [Raide ou matrice de masse], [#strong['ode15s'];, #strong['ode23s'];, #strong['ode23t'];, #strong['ode23tb'];], [Pour les modes rapides amortis, les matrices de masse ou les jacobiens utiles.], 
  [Totalement implicite], [#strong['ode15i'];, #strong['idas'];], [#strong['idas']; est disponible seulement quand Nelson est construit avec le backend optionnel SUNDIALS.], 
  [Backend optionnel], [#strong['cvodesnonstiff'];, #strong['cvodesstiff'];, #strong['idas'];], [#strong[NELSON\_SUNDIALS\_RUNTIME]; peut valoir #strong[OFF]; pour forcer le fallback interne ou #strong[ON]; pour autoriser le backend quand il est compile.], 
)

== Exemples

Utiliser InitialTime avec un temps final.

``````matlab
problem = ode('ODEFcn', @(t,y) -y, 'InitialTime', 2, 'InitialValue', 1);
result = solve(problem, 3)
``````

Construire une fonction d'interpolation.

``````matlab
problem = ode('ODEFcn', @(t,y) -y, 'InitialValue', 1);
f = solutionFcn(problem, 1);
yhalf = f(0.5)
``````

Resoudre un probleme residuel totalement implicite.

``````matlab
problem = ode('EquationType', 'fullyimplicit', ...
  'ODEFcn', @(t,y,yp) yp + y, ...
  'InitialValue', 1, ...
  'InitialSlope', -1);
result = solve(problem, 1)
``````

Passer des parametres supplementaires a une fonction de probleme.

``````matlab
problem = ode('ODEFcn', @(t,y,a) a .* y, ...
  'InitialValue', 1, ...
  'Parameters', 2);
result = solve(problem, 0, 1)
``````

Resoudre un probleme en separant les parties complexes en interne.

``````matlab
problem = ode('ODEFcn', @(t,y) y .* t + 2 * 1i, ...
  'InitialValue', 1 + 1i, ...
  'SeparateComplexParts', 'on');
result = solve(problem, 0, 2)
``````


== Voir aussi

#nlink(<ode_solvers:nelson.ode.options.CVODESNonstiff>)[nelson.ode.options.CVODESNonstiff];, #nlink(<ode_solvers:nelson.ode.options.CVODESStiff>)[nelson.ode.options.CVODESStiff];, #nlink(<ode_solvers:nelson.ode.options.IDAS>)[nelson.ode.options.IDAS];, #nlink(<ode_solvers:odeJacobian>)[odeJacobian];, #nlink(<ode_solvers:odeMassMatrix>)[odeMassMatrix];, #nlink(<ode_solvers:odeEvent>)[odeEvent];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
