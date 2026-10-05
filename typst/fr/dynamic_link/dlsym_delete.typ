#import "nelson_help.typ": *

= dlsym\_delete <dynamic_link:dlsym_delete>

Supprime l'objet dlsym

== Syntaxe

- #raw("dlsym_delete(h)");
- #raw("delete(h)");

== Argument d'entrée

/ h: un handle : un objet dlsym.

== Description

#strong[delete(h)]; libère l'objet dlsym.

 N'oubliez pas de nettoyer la variable h ensuite.


== Exemple

``````matlab
used = dlsym_used()
``````


== Voir aussi

#nlink(<dynamic_link:dlsym>)[dlsym];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
