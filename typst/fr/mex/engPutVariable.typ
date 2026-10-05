#import "nelson_help.typ": *

= engPutVariable <mex:engPutVariable>

Place une variable dans l'espace de travail du moteur Nelson

== Syntaxe

- #raw("#include \"engine.h\"");
- #raw("int engPutVariable(Engine *ep, const char *name, const mxArray *pm);");

== Argument d'entrée

/ Engine \*ep: poignée du moteur Nelson.
/ const char \*name: nom du mxArray dans l'espace de travail de Nelson (portée de base).
/ const mxArray \*pm: Pointeur vers un mxArray.

== Argument de sortie

/ int: 0 en cas de succès ou 1 si une erreur survient.

== Description

Place une variable dans l'espace de travail du moteur Nelson.


== Exemple

``````matlab
edit([modulepath('mex', 'tests'), '/test_engine.c'])
``````


== Voir aussi

#nlink(<mex:mex>)[mex];, #nlink(<mex:engGetVariable>)[engGetVariable];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
