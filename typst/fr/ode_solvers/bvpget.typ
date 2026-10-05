#import "nelson_help.typ": *

= bvpget <ode_solvers:bvpget>

Recupere une option BVP.

== Syntaxe

- #raw("value = bvpget(options, name)");
- #raw("value = bvpget(options, name, defaultValue)");

== Description

#strong[bvpget]; recupere une valeur d'une structure d'options BVP et retourne la valeur par defaut quand l'option est vide.

 

#table(
  columns: 2,
  [Appel], [Role], 
  [#strong[value \= \*get(options,name)];], [Retourne la valeur stockee pour #strong[name];.], 
  [#strong[value \= \*get(options,name,default)];], [Retourne #strong[default]; si l option est absente ou vide.], 
)

== Exemple

Exemple complet des fonctionnalites DDE et BVP ajoutees.

``````matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/dde_bvp_added_features_example.m'])
``````


== Voir aussi

#nlink(<ode_solvers:bvpset>)[bvpset];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
