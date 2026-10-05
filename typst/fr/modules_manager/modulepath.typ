#import "nelson_help.typ": *

= modulepath <modules_manager:modulepath>

Renvoie le chemin d'un module.

== Syntaxe

- #raw("p = modulepath(module_short_name)");
- #raw("p = modulepath(module_short_name, option)");

== Argument d'entrée

/ module\_short\_name or 'nelson': chaîne : nom court du module. Le module doit exister dans la session Nelson.
/ option: chaîne : 'etc', 'bin', 'root', 'builtin', 'tests'.

== Argument de sortie

/ p: chaîne : chemin ou sous-chemin du module.

== Description

#strong[modulepath]; est une fonction d'aide qui renvoie le chemin racine d'un module ou un sous-répertoire.

 #strong[modulepath('nelson')]; est équivalent à #strong[modulepath('nelson', 'root')];

 #strong[modulepath('nelson', 'bin')]; renvoie le chemin des exécutables de Nelson.

 #strong[modulepath('nelson', 'builtin')]; renvoie le chemin des bibliothèques dynamiques de Nelson.


== Exemple

``````matlab
modulepath('core')
modulepath('core', 'root')
modulepath('core', 'etc')
modulepath('core', 'bin')
modulepath('core', 'builtin')
modulepath('core', 'tests')
modulepath('nelson', 'root')
modulepath('nelson', 'bin')
modulepath('nelson', 'builtin')

``````


== Voir aussi

#nlink(<modules_manager:requiremodule>)[requiremodule];, #nlink(<modules_manager:getmodules>)[getmodules];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
