#import "nelson_help.typ": *

= gatewayinfo <modules_manager:gatewayinfo>

Retourne des informations sur une gateway.

== Syntaxe

- #raw("[gateway_name, builtin_list] = gatewayinfo(dyn_lib_path)");
- #raw("[gateway_name, builtin_list, state] = gatewayinfo(dyn_lib_path)");

== Argument d'entrée

/ dyn\_lib\_path: chaine : chemin d'une bibliotheque dynamique preparee pour Nelson.

== Argument de sortie

/ gateway\_name: chaine : nom de la gateway
/ builtin\_list: cellule de chaines : liste des builtin presents dans cette gateway
/ state: chaine : etat courant de la gateway, #strong[loaded];, #strong[lazy]; ou #strong[not\_loaded];

== Description

#strong[\[gateway\_name, builtin\_list\] \= gatewayinfo(dyn\_lib\_path)]; recupere des informations sur une gateway.

 La bibliotheque dynamique doit fournir un point d'entree C nomme #strong[GetGatewayDescriptor];.

 La troisieme sortie optionnelle indique si la gateway est chargee, enregistree en lazy-loading ou non enregistree.

 Les metadonnees de descriptor peuvent etre reutilisees depuis le cache unique #strong[prefdir()\/gateway\_cache.json];; l'entree du cache est reconstruite automatiquement quand la bibliotheque dynamique est modifiee.

 Si le fichier n'existe pas, une erreur est levee.


== Exemple

``````matlab
[gateway_name, builtin_list, state] = gatewayinfo(modulepath('time', 'builtin'))

``````


== Voir aussi

#nlink(<modules_manager:addgateway>)[addgateway];, #nlink(<modules_manager:removegateway>)[removegateway];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
