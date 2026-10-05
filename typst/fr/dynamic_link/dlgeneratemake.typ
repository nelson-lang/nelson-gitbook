#import "nelson_help.typ": *

= dlgeneratemake <dynamic_link:dlgeneratemake>

Génère un makefile pour construire une bibliothèque dynamique

== Syntaxe

- #raw("[res, message] = dlgeneratemake(destinationdir, libname, c_cpp_files, include)");
- #raw("[res, message] = dlgeneratemake(destinationdir, libname, c_cpp_files, includes, defines, external_libraries, build_configuration, c_flags, cxx_flags)");
- #raw("[res, message] = dlgeneratemake(maketype, destinationdir, libname, c_cpp_files, include)");
- #raw("[res, message] = dlgeneratemake(maketype, destinationdir, libname, c_cpp_files, includes, defines, external_libraries, build_configuration, c_flags, cxx_flags)");

== Argument d'entrée

/ maketype: a string: 'executable' or 'dynamic\_library'.
/ destinationdir: a string: destination directory where is generated the makefile.
/ libname: a string: destination dynamic library or executable name.
/ c\_cpp\_files: a string or a cell of strings: .c or .cpp list files (full filename)
/ include: a string or a cell of strings: directories where to find include files.
/ defines: a string or a cell of strings: a list of defines
/ external\_libraries: a string or a cell of strings: a list of external libraries to link
/ build\_configuration: a string: 'Debug' or 'Release'
/ c\_flags: a string: C flags
/ cxx\_flags: a string: C flags

== Argument de sortie

/ res: a logical: true if makefile was generated.
/ message: a string: empty if makefile was generated or an error message.

== Description

#strong[dlgeneratemake]; génère un makefile adapté à votre environnement pour construire des bibliothèques partagées.

 Nelson s'appuie sur #strong[CMake]; pour cette tâche.

 Appelée avec au moins un argument de sortie, #strong[dlgeneratemake]; retourne #strong[res]; (un logique) et #strong[message];. Appelée sans argument de sortie, elle lève l'erreur #strong[Nelson:dlgeneratemake:failed]; en cas d'échec au lieu de retourner un statut faux.


== Exemple

See module skeleton for example

``````matlab
[status, message] = dlgeneratemake(currentpath, ...
'module_skeleton', ...
{[currentpath, '/cpp/cpp_sumBuiltin.cpp'], [currentpath, '/cpp/Gateway.cpp']}, ...
[{[currentpath, '/include']; [currentpath, '/../src/include']}; dlgetnelsonincludes()], ...
[], ...
[dlgetnelsonlibraries(); [currentpath, '/../src/business_code']]);
``````


== Voir aussi

#nlink(<dynamic_link:dlmake>)[dlmake];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
