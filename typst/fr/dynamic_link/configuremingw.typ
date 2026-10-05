#import "nelson_help.typ": *

= configuremingw <dynamic_link:configuremingw>

Configurer Nelson pour utiliser MinGW comme compilateur C par défaut

== Syntaxe

- #raw("[res, message] = configuremingw(mingw_path)");

== Argument d'entrée

/ mingw\_path: une chaîne : chemin racine de MinGW.

== Argument de sortie

/ res: un booléen : true si MinGW a été trouvé
/ message: une chaîne : vide si MinGW a été trouvé, sinon un message d'erreur.

== Description

Par défaut, Nelson n'a pas de compilateur C\/C++ défini par défaut sous Windows.

 Sur les autres plateformes, on suppose qu'un compilateur C\/C++ est disponible et l'appel de cette fonction n'est pas requis.

 Sous Windows, appelez une fois #strong[configuremingw]; si vous souhaitez utiliser MinGW comme compilateur C par défaut.


== Exemple

``````matlab
configuremingw('c:/mingw')
``````


== Voir aussi

#nlink(<dynamic_link:2_supported_compilers>)[Supported C\/C++ compilers];, #nlink(<dynamic_link:havecompiler>)[havecompiler];, #nlink(<dynamic_link:configuremsvc>)[configuremsvc];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
