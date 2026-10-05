#import "nelson_help.typ": *

= removegateway <modules_manager:removegateway>

Supprime dynamiquement un builtin au moment de l'exécution.

== Syntaxe

- #raw("removegateway(dyn_lib_path)");

== Argument d'entrée

/ dyn\_lib\_path: chaîne : chemin d'une bibliothèque dynamique préparée pour Nelson.

== Description

#strong[removegateway(dyn\_lib\_path)]; supprime dynamiquement un builtin au moment de l'exécution.

 La bibliothèque dynamique doit fournir au minimum un point d'entrée C nommé#strong[RemoveGateway];.

 Si la gateway n'était pas chargée, aucune erreur ni avertissement ne sera levé. Si le fichier n'existe pas, une erreur est levée.


== Exemple

removes time builtin

``````matlab
calendar
removegateway(modulepath('time', 'builtin'))
calendar
``````


== Voir aussi

#nlink(<modules_manager:addgateway>)[addgateway];, #nlink(<modules_manager:gatewayinfo>)[gatewayinfo];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
