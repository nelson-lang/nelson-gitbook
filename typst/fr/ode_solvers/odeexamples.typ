#import "nelson_help.typ": *

= odeexamples <ode_solvers:odeexamples>

Point d'entree des exemples EDO.

== Syntaxe

- #raw("odeexamples()");

== Description

#strong[odeexamples]; ouvre la page d'aide des workflows EDO, qui contient des exemples executables et des tutoriels.

 

#table(
  columns: 3,
  [Exemple], [Objectif], [Sortie], 
  [ODE de base], [Resolution de valeur initiale et sortie dense.], [Courbes de solution et valeurs echantillonnees.], 
  [Evenements et matrice de masse], [Localisation d'evenements, matrices de masse et options solveur.], [Points d'evenement et traces diagnostiques.], 
  [Fonctionnalites DDE\/BVP ajoutees], [Equations a retard et problemes aux limites.], [Traces et structures de solution.], 
)
 Le repertoire #strong[ode\_solvers\/examples]; contient aussi des scripts complets pour les evenements et l'interpolation, les equations totalement implicites, les sensibilites avec retard, les workflows DDE\/BVP et le preconditionnement creux SUNDIALS optionnel.


== Exemples

Ouvrir le point d'entree des exemples.

``````matlab
odeexamples()
``````

Executer l'exemple evenements et interpolation.

``````matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/ode_object_event_interpolation_example.m'])
``````

Executer l'exemple DDE et BVP.

``````matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/dde_bvp_added_features_example.m'])
``````

Executer l'exemple SUNDIALS optionnel avec preconditionnement creux.

``````matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/ode_sundials_sparse_preconditioner_example.m'])
``````


== Voir aussi

#nlink(<ode_solvers:1_ode_workflows>)[workflows EDO];, #nlink(<ode_solvers:ode>)[ode];, #nlink(<ode_solvers:dde23>)[dde23];, #nlink(<ode_solvers:bvp4c>)[bvp4c];, #nlink(<ode_solvers:nelson.ode.options.CVODESStiff>)[nelson.ode.options.CVODESStiff];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
