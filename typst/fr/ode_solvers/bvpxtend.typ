#import "nelson_help.typ": *

= bvpxtend <ode_solvers:bvpxtend>

Etend une estimation de solution BVP.

== Syntaxe

- #raw("solinit = bvpxtend(sol, xnew)");
- #raw("solinit = bvpxtend(sol, xnew, ynew)");

== Description

#strong[bvpxtend]; construit une nouvelle estimation initiale BVP depuis une solution existante et un maillage raffine.

 

#table(
  columns: 2,
  [Entree], [Details], 
  [#strong[sol];], [Solution existante ou structure d'estimation initiale.], 
  [#strong[xnew];], [Nouveaux points ajoutes au maillage ou remplacant le maillage precedent.], 
  [#strong[ynew];], [Valeurs optionnelles aux nouveaux points du maillage.], 
  [#strong[solinit];], [Structure d'estimation etendue pour un autre appel #strong[bvp4c]; ou #strong[bvp5c];.], 
)

== Exemple

Exemple complet des fonctionnalites DDE et BVP ajoutees.

``````matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/dde_bvp_added_features_example.m'])
``````


== Voir aussi

#nlink(<ode_solvers:bvpinit>)[bvpinit];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
