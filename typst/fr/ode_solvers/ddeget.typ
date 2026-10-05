#import "nelson_help.typ": *

= ddeget <ode_solvers:ddeget>

Recupere une option DDE.

== Syntaxe

- #raw("value = ddeget(options, name)");
- #raw("value = ddeget(options, name, defaultValue)");

== Description

#strong[ddeget]; recupere une valeur d'une structure d'options DDE et retourne la valeur par defaut quand l'option est vide.

 

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

#nlink(<ode_solvers:ddeset>)[ddeset];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
