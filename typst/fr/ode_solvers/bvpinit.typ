#import "nelson_help.typ": *

= bvpinit <ode_solvers:bvpinit>

Cree une estimation initiale BVP.

== Syntaxe

- #raw("solinit = bvpinit(xinit, yinit)");
- #raw("solinit = bvpinit(xinit, yinit, parameters)");

== Description

#strong[bvpinit]; cree le maillage initial, l'estimation d'etat et les parametres inconnus optionnels utilises par les solveurs BVP.

 

#table(
  columns: 3,
  [Entree], [Forme acceptee], [Role], 
  [#strong[xinit];], [Vecteur de maillage croissant.], [Definit le premier maillage BVP.], 
  [#strong[yinit];], [Vecteur constant, tableau sur le maillage ou handle de fonction.], [Definit l'estimation initiale de la solution.], 
  [#strong[parameters];], [Vecteur optionnel.], [Estimation initiale des parametres inconnus.], 
  [#strong[solinit];], [Structure.], [Entree pour #strong[bvp4c]; et #strong[bvp5c];.], 
)

== Exemple

Exemple complet des fonctionnalites DDE et BVP ajoutees.

``````matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/dde_bvp_added_features_example.m'])
``````


== Voir aussi

#nlink(<ode_solvers:bvp4c>)[bvp4c];, #nlink(<ode_solvers:bvp5c>)[bvp5c];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
