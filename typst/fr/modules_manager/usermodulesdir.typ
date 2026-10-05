#import "nelson_help.typ": *

= usermodulesdir <modules_manager:usermodulesdir>

Renvoie le chemin où les modules externes sont enregistrés.

== Syntaxe

- #raw("p = usermodulesdir()");

== Argument de sortie

/ p: chaîne : chemin où sont stockés les modules externes.

== Description

#strong[usermodulesdir]; est une fonction d'aide qui renvoie le chemin où les modules externes des utilisateurs sont enregistrés.

 Ce chemin peut être remplacé en définissant la variable d'environnement NELSON\_EXTERNAL\_MODULES\_PATH sur votre système.


== Exemple

``````matlab
usermodulesdir()
``````


== Voir aussi

#nlink(<modules_manager:toolboxdir>)[toolboxdir];, #nlink(<modules_manager:getmodules>)[getmodules];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
