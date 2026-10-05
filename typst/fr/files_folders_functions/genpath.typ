#import "nelson_help.typ": *

= genpath <files_folders_functions:genpath>

Genere une chaine de chemin recursive.

== Syntaxe

- #raw("p = genpath(folder)");

== Description

#strong[genpath]; retourne une chaine contenant #strong[folder]; et ses sous-dossiers inclus, separes par #strong[pathsep];.


== Exemple

``````matlab
p = genpath(tempdir())
``````


== Voir aussi

#nlink(<files_folders_functions:pathsep>)[pathsep];, #nlink(<files_folders_functions:fullfile>)[fullfile];.
