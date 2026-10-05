#import "nelson_help.typ": *

= doc <help_tools:doc>

Affiche la documentation.

== Syntaxe

- #raw("doc");
- #raw("doc function_name");
- #raw("doc('function_name')");

== Argument d'entrée

/ function\_name: une chaîne : nom de la fonction

== Description

#strong[doc]; lance le navigateur d'aide.

 #strong[doc('function\_name')]; affiche l'aide de la fonction indiquée par 'function\_name'.


== Exemples

``````matlab
doc()
``````

``````matlab
doc sin
``````

``````matlab
doc is
``````


== Voir aussi

#nlink(<help_tools:help>)[help];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
