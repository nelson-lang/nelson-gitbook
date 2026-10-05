#import "nelson_help.typ": *

= dlclose <dynamic_link:dlclose>

Supprime l'objet dllib

== Syntaxe

- #raw("dllib_delete(h)");
- #raw("delete(h)");
- #raw("dlclose(h)");

== Argument d'entrée

/ h: un handle : un objet dllib.

== Description

#strong[dlclose(h)]; ou #strong[delete(h)]; libère l'objet dllib.

 N'oubliez pas de nettoyer la variable h ensuite.


== Exemple

``````matlab
path_ref = modulepath('dynamic_link', 'builtin');
lib = dlopen(path_ref)
isvalid(lib)
dlclose(lib); // or delete(lib)
isvalid(lib)
``````


== Voir aussi

#nlink(<dynamic_link:dlopen>)[dlopen];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
