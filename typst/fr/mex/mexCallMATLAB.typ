#import "nelson_help.typ": *

= mexCallMATLAB <mex:mexCallMATLAB>

Appelle une fonction NELSON

== Syntaxe

- #raw("#include \"mex.h\"");
- #raw("int mexCallMATLAB(int nlhs, mxArray *plhs[], int nrhs, mxArray *prhs[], const char *command_name);");

== Argument d'entrée

/ nlhs: nombre d'arguments de sortie souhaités.
/ plhs: pointeur vers un tableau de mxArray (sortie).
/ nrhs: nombre d'arguments d'entrée souhaités.
/ prhs: pointeur vers un tableau de mxArray (entrée).
/ command\_name: chaîne de caractères contenant le nom de la fonction NELSON appelée.

== Argument de sortie

/ valeur retournée: 0 si l'appel réussit, et une valeur non nulle en cas d'échec.

== Description

#strong[mexCallMATLAB]; appelle une fonction NELSON.

 Si la fonction appelée détecte une erreur, NELSON terminera le MEX et rendra le contrôle à NELSON.


== Exemple

``````matlab
edit([modulepath('mex', 'tests'), '/test_mexCallMATLAB.m'])
``````


== Voir aussi

#nlink(<core:eval>)[eval];, #nlink(<mex:mexCallMATLABWithTrap>)[mexCallMATLABWithTrap];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
