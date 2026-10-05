#import "nelson_help.typ": *

= genpath <files_folders_functions:genpath>

Generate a recursive path string.

== Syntax

- #raw("p = genpath(folder)");

== Description

#strong[genpath]; returns a path string containing #strong[folder]; and its included subfolders separated by #strong[pathsep];.


== Example

``````matlab
p = genpath(tempdir())
``````


== See also

#nlink(<files_folders_functions:pathsep>)[pathsep];, #nlink(<files_folders_functions:fullfile>)[fullfile];.
