#import "nelson_help.typ": *

= getmodules <modules_manager:getmodules>

Renvoie la liste des modules chargés dans Nelson.

== Syntaxe

- #raw("modules_name = getmodules()");
- #raw("[modules_name, modules_root_path, modules_version, modules_protected] = getmodules()");

== Argument de sortie

/ modules\_name: cellule de chaînes : noms des modules.
/ modules\_root\_path: cellule de chaînes : chemins des modules.
/ modules\_version: cellule de vecteurs : \[major, minor, patch\].
/ modules\_protected: vecteur logique : true si le module peut être supprimé, sinon false.

== Description

#strong[getmodules]; renvoie la liste des modules chargés dans Nelson.

 Tous les modules du cœur sont protégés et ne peuvent pas être supprimés pendant une session Nelson.


== Exemple

``````matlab
[modules_name, modules_root_path, modules_version, modules_protected] = getmodules()
``````


== Voir aussi

#nlink(<modules_manager:requiremodule>)[requiremodule];, #nlink(<modules_manager:ismodule>)[ismodule];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
