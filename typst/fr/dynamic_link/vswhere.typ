#import "nelson_help.typ": *

= vswhere <dynamic_link:vswhere>

Localiser les installations de Visual Studio (2017, 2019 et versions ultérieures)

== Syntaxe

- #raw("res = vswhere()");

== Argument de sortie

/ res: a struct with information about Visual studio

== Description

#strong[vswhere]; permet de trouver facilement Visual Studio.

 #strong[vswhere]; est actuellement implémenté seulement sur la plateforme Windows.


== Bibliographie

https:\/\/github.com\/Microsoft\/vswhere

== Exemple

``````matlab
vswhere()
``````


== Voir aussi

#nlink(<dynamic_link:havecompiler>)[havecompiler];, #nlink(<dynamic_link:2_supported_compilers>)[Supported C\/C++ compilers];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
