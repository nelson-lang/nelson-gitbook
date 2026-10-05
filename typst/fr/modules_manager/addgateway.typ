#import "nelson_help.typ": *

= addgateway <modules_manager:addgateway>

Ajoute dynamiquement des builtins au moment de l'execution.

== Syntaxe

- #raw("addgateway(dyn_lib_path)");
- #raw("addgateway(dyn_lib_path, mode)");
- #raw("addgateway(dyn_lib_path, module_name, mode)");

== Argument d'entrée

/ dyn\_lib\_path: chaine : chemin d'une bibliotheque dynamique preparee pour Nelson.
/ mode: chaine : #strong[auto]; utilise le cache gateway et le lazy-loading quand c'est possible, #strong[loaded]; force le chargement immediat.

== Description

#strong[addgateway(dyn\_lib\_path)]; ajoute dynamiquement des builtins au moment de l'execution.

 La bibliotheque dynamique doit fournir #strong[GetGatewayDescriptor]; et #strong[AddGateway];.

 Par defaut, le mode #strong[auto]; enregistre les builtins lazy depuis le cache quand c'est possible. Utiliser #strong[loaded]; force le chargement immediat de la bibliotheque dynamique.

 Les descriptors de gateway sont stockes dans un cache unique, #strong[prefdir()\/gateway\_cache.json];. Nelson reconstruit automatiquement l'entree du cache quand la bibliotheque dynamique est modifiee.

 Definir #strong[NELSON\_GATEWAY\_TRACE\=1]; affiche les decisions de cache et de chargement des gateways. Definir #strong[NELSON\_GATEWAY\_FORCE\_LOADED\=1]; force le chargement immediat de toutes les gateways.

 Si la gateway est deja chargee, aucune erreur ni avertissement ne sera leve.


== Exemple

Ajouter la gateway pour le module time :

``````matlab
addgateway(modulepath('time', 'builtin'), 'loaded')
``````


== Voir aussi

#nlink(<modules_manager:removegateway>)[removegateway];, #nlink(<modules_manager:gatewayinfo>)[gatewayinfo];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
