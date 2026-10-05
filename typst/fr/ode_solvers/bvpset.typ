#import "nelson_help.typ": *

= bvpset <ode_solvers:bvpset>

Cree ou met a jour des options BVP.

== Syntaxe

- #raw("options = bvpset()");
- #raw("options = bvpset(name, value)");

== Description

#strong[bvpset]; cree des options pour les solveurs de problemes aux limites.

 

#table(
  columns: 2,
  [Option], [Role], 
  [#strong[RelTol];, #strong[AbsTol];], [Tolerances de resolution.], 
  [#strong[NMax];], [Nombre maximal de points de maillage.], 
  [#strong[FJacobian];, #strong[BCJacobian];], [Jacobiens analytiques pour l equation et les conditions aux limites.], 
  [#strong[Vectorized];, #strong[SingularTerm];, #strong[Stats];], [Vectorisation, terme singulier et affichage des statistiques.], 
)
 Les noms pris en charge incluent #strong[AbsTol];, #strong[RelTol];, #strong[NMax];, #strong[Stats];, #strong[Vectorized];, #strong[FJacobian];, #strong[BCJacobian]; et #strong[SingularTerm];. #strong[FJacobian]; et #strong[BCJacobian]; sont utilises ensemble par l'iteration de Newton quand les deux callbacks sont presents.


== Exemple

Exemple complet des fonctionnalites DDE et BVP ajoutees.

``````matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/dde_bvp_added_features_example.m'])
``````


== Voir aussi

#nlink(<ode_solvers:bvpget>)[bvpget];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
