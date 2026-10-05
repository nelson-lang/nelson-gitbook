#import "nelson_help.typ": *

= computer <os_functions:computer>

Informations sur le système.

== Syntaxe

- #raw("c = computer()");
- #raw("[c, maxsize] = computer()");
- #raw("[c, maxsize, endian] = computer()");
- #raw("arch = computer('arch')");

== Argument d'entrée

/ 'arch': une chaîne : retourne l'architecture de l'ordinateur.

== Argument de sortie

/ c: une chaîne : type d'ordinateur : 'PCWIN', 'PCWIN64', 'PCWOA64', 'GLNXA64', 'GLNXA32', 'MACI32', 'MACI64', 'MACA64'
/ maxsize: un entier : nombre maximal d'éléments autorisés dans un tableau.
/ endian: une chaîne : 'L' pour little-endian, 'B' pour big-endian.
/ arch: une chaîne : type d'architecture : 'woa64', 'win64', 'win32', 'glnxa64', 'glnxa32', 'maci64', 'maci32', 'maca64'.

== Description

#strong[computer]; identifie le type d'ordinateur sur lequel Nelson s'exécute.


== Exemple

``````matlab
c = computer()
[c, maxsize] = computer()
[c, maxsize, endian] = computer()
arch = computer('arch')
``````


== Voir aussi

#nlink(<os_functions:ispc>)[ispc];, #nlink(<os_functions:ismac>)[ismac];, #nlink(<os_functions:isunix>)[isunix];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [1.16.0], [PCWOA64 and woa64 ajoutés],
)

// Auteur: Allan CORNET
