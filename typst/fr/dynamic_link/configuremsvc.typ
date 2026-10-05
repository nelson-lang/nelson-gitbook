#import "nelson_help.typ": *

= configuremsvc <dynamic_link:configuremsvc>

Configurer Nelson pour utiliser Visual Studio comme compilateur par défaut

== Syntaxe

- #raw("[res, message] = configuremsvc()");

== Argument de sortie

/ res: un booléen : true si Visual Studio a été trouvé
/ message: une chaîne : vide si Visual Studio a été trouvé, sinon un message d'erreur.

== Description

Par défaut, Nelson n'a pas de compilateur C\/C++ défini sous Windows.

 Sur les autres plateformes, on suppose qu'un compilateur C\/C++ est disponible et l'appel de cette fonction n'est pas requis.

 Sous Windows, appelez une fois #strong[configuremsvc]; si vous souhaitez utiliser Visual Studio comme compilateur par défaut.

 Après chaque mise à jour de Visual Studio, il pourra être nécessaire d'appeler de nouveau#strong[configuremsvc];.


== Exemple

``````matlab
configuremsvc()
``````


== Voir aussi

#nlink(<dynamic_link:2_supported_compilers>)[Supported C\/C++ compilers];, #nlink(<dynamic_link:havecompiler>)[havecompiler];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
