#import "nelson_help.typ": *

= nelson.ode.ODEResults <ode_solvers:nelson.ode.ODEResults>

Objet resultat retourne par solve sur un objet ode.

== Syntaxe

- #raw("result = solve(problem, tfinal)");
- #raw("result = solve(problem, t0, tfinal)");
- #raw("result = nelson.ode.ODEResults(sol)");

== Description

#strong[nelson.ode.ODEResults]; stocke le resultat d'une integration realisee avec le workflow objet #strong[ode];. L'appel de #strong[solve]; sur un objet #strong[ode]; retourne une instance de cette classe.

 

#table(
  columns: 2,
  [Propriete], [Contenu], 
  [#strong[Time];], [Vecteur ligne des points de temps de l'integration.], 
  [#strong[Solution];], [Matrice des valeurs de la solution, une ligne par composante et une colonne par point de temps.], 
  [#strong[Sensitivity];], [Valeurs de sensibilite lorsqu'une analyse de sensibilite est demandee, vide sinon.], 
  [#strong[EventTime];], [Instants auxquels des evenements ont ete detectes, vide lorsqu'aucune fonction d'evenement n'est definie.], 
  [#strong[EventSolution];], [Valeurs de la solution aux evenements detectes.], 
  [#strong[EventIndex];], [Indices des fonctions d'evenement declenchees.], 
  [#strong[EventSensitivity];], [Valeurs de sensibilite aux evenements detectes, vide sinon.], 
  [#strong[AdjointGradient];], [Gradient calcule par analyse de sensibilite adjointe, vide sinon.], 
)
 La classe porte aussi les proprietes cachees #strong[RawSolution]; (la structure de solution sous-jacente, utilisable avec #strong[deval]; et #strong[odextend];), #strong[SolutionValues]; (la transposee de #strong[Solution];, une ligne par point de temps) et #strong[Stats]; (les statistiques du solveur lorsqu'elles sont disponibles).

 Le constructeur #strong[nelson.ode.ODEResults(sol)]; construit un objet resultat a partir d'une structure de solution comportant au moins les champs #strong[x]; et #strong[y];, telle que la structure retournee par les fonctions solveurs. Les proprietes d'evenement et de sensibilite sont remplies a partir des champs optionnels #strong[xe];, #strong[ye];, #strong[ie];, #strong[sensitivity];, #strong[eventSensitivity]; et #strong[adjointGradient];. Appele sans argument, le constructeur retourne un objet dont toutes les proprietes sont vides.


== Exemple

Resoudre un probleme et inspecter l'objet resultat.

``````matlab
problem = ode('ODEFcn', @(t,y) -y, 'InitialValue', 1);
result = solve(problem, 0, 2);
class(result)
result.Time(end)
result.Solution(:, end)
``````


== Voir aussi

#nlink(<ode_solvers:ode>)[ode];, #nlink(<ode_solvers:deval>)[deval];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
