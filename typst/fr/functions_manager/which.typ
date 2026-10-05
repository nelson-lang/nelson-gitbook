#import "nelson_help.typ": *

= which <functions_manager:which>

Localise les fonctions et intégrées.

== Syntaxe

- #raw("which(function_name)");
- #raw("p = which(function_name)");
- #raw("c = which(function_name, '-all')");
- #raw("m = which(function_name, '-module')");

== Argument d'entrée

/ function\_name: une chaîne : nom de fonction.

== Argument de sortie

/ p: une chaîne : chemin de la fonction ou intégrée
/ c: une cellule de chaînes : chemins de la fonction ou intégrée.
/ m: une cellule de chaînes : nom des modules où la fonction ou intégrée est disponible.

== Description

#strong[which]; retourne le chemin d'une fonction ou d'une intégrée.


== Exemple

``````matlab
which('cos')
p = which('cos')
c = which('cos', '-all')
m = which('cos', '-module')

``````


== Voir aussi

#nlink(<functions_manager:what>)[what];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
