#import "nelson_help.typ": *

= dlmake <dynamic_link:dlmake>

Appeler l'outil make ou nmake

== Syntaxe

- #raw("[res, message] = dlmake(destinationdir)");
- #raw("[res, message] = dlgeneratemake(destinationdir, libname, c_cpp_files, includes, defines, external_libraries, build_configuration, c_flags, cxx_flags)");

== Argument d'entrée

/ destinationdir: une chaîne : répertoire contenant le makefile à exécuter.

== Argument de sortie

/ res: un booléen : true si l'exécution du makefile a réussi.
/ message: une chaîne : vide si l'exécution a réussi, sinon un message d'erreur.

== Description

#strong[dlmake]; fournit un moyen multiplateforme pour construire du code C\/C++.

 Appelée avec au moins un argument de sortie, #strong[dlmake]; retourne #strong[res]; (un logique) et #strong[message];. Appelée sans argument de sortie, elle lève l'erreur #strong[Nelson:dlmake:failed]; en cas d'échec au lieu de retourner un statut faux.


== Exemple

basic example to call dlmake

``````matlab

dest = [tempdir(), 'dlmake_help'];
mkdir(dest);
txt = 'MESSAGE( STATUS "Hello world !")';
filewrite([dest, '/CMakeLists.txt'], txt);
[status, message] = dlmake(dest)

``````


== Voir aussi

#nlink(<dynamic_link:dlgeneratemake>)[dlgeneratemake];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
