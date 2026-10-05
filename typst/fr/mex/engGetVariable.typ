#import "nelson_help.typ": *

= engGetVariable <mex:engGetVariable>

Copie une variable depuis l'espace de travail du moteur Nelson

== Syntaxe

- #raw("#include \"engine.h\"");
- #raw("mxArray *engGetVariable(Engine *ep, const char *name);");

== Argument d'entrée

/ Engine \*ep: poignée du moteur Nelson.
/ const char \*name: nom du mxArray dans l'espace de travail de Nelson (portée de base).

== Argument de sortie

/ mxArray \*: Pointeur vers une structure mxArray allouée. N'oubliez pas de libérer la mémoire.

== Description

Copie une variable depuis l'espace de travail du moteur Nelson.

 La limite de taille des données transférées est de 2048 Mo.


== Exemple

``````matlab
edit([modulepath('mex', 'tests'), '/test_engine.c'])
``````


== Voir aussi

#nlink(<mex:mex>)[mex];, #nlink(<mex:engPutVariable>)[engPutVariable];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
