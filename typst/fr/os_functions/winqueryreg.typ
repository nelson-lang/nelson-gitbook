#import "nelson_help.typ": *

= winqueryreg <os_functions:winqueryreg>

Lire le registre Windows (Windows seulement).

== Syntaxe

- #raw("c = winqueryreg ('name', rootkey, subkey)");
- #raw("v = winqueryreg (rootkey, subkey, value_name)");
- #raw("v = winqueryreg (rootkey, subkey)");

== Argument d'entrée

/ rootkey: une chaîne : clé racine.
/ subkey: une chaîne : chemin de la sous-clé.
/ value\_name: une chaîne : nom de la valeur.

== Argument de sortie

/ c: une cellule de chaînes.
/ v: une chaîne ou un int32.

== Description

#strong[c \= winqueryreg ('name', rootkey, subkey)]; renvoie une cellule de chaînes contenant les noms des clés dans rootkey\\subkey.

 #strong[v \= winqueryreg (rootkey, subkey, value\_name)]; renvoie la valeur associée à value\_name dans rootkey\\subkey.

 Si la valeur est un entier 32 bits,#strong[winqueryreg]; renvoie la valeur en int32. Si la valeur est une chaîne, elle est renvoyée en tant que chaîne.

 #strong[v \= winqueryreg (rootkey, subkey)]; renvoie la valeur dans rootkey\\subkey qui n'a pas de propriété value name.

 Clés racines supportées :

 'HKEY\_CLASSES\_ROOT', 'HKCR',

 'HKEY\_CURRENT\_USER', 'HKCU',

 'HKEY\_LOCAL\_MACHINE', 'HKLM',

 'HKEY\_USERS', 'HKU',

 'HKEY\_CURRENT\_CONFIG', 'HKCC'


== Exemple

``````matlab
winqueryreg('name', 'HKEY_LOCAL_MACHINE', 'HARDWARE\DESCRIPTION\System')
winqueryreg('HKLM', 'HARDWARE\DESCRIPTION\System\CentralProcessor\1\', 'ProcessorNameString')
``````


== Voir aussi

#nlink(<os_functions:winopen>)[winopen];, #nlink(<os_functions:searchenv>)[searchenv];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
