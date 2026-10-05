#import "nelson_help.typ": *

= mexCallMATLABWithTrap <mex:mexCallMATLABWithTrap>

Appelle une fonction NELSON et capture l'erreur.

== Syntaxe

- #raw("#include \"mex.h\"");
- #raw("mxArray *mexCallMATLABWithTrap(int nlhs, mxArray *plhs[], int nrhs, mxArray *prhs[], const char *functionName);");

== Argument d'entrée

/ nlhs: nombre d'arguments de sortie souhaités.
/ plhs: pointeur vers un tableau de mxArray (sortie).
/ nrhs: nombre d'arguments d'entrée souhaités.
/ prhs: pointeur vers un tableau de mxArray (entrée).
/ command\_name: chaîne contenant le nom de la fonction Nelson appelée.

== Argument de sortie

/ returned value: NULL si aucune erreur n'est survenue ; sinon, un pointeur vers un mxArray (objet MException).

== Description

#strong[mexCallMATLABWithTrap]; appelle une fonction NELSON et capture l'erreur.

 Si une erreur est détectée,#strong[mexCallMATLABWithTrap]; renvoie un mxArray (objet MException).


== Exemple

``````matlab
edit([modulepath('mex', 'tests'), '/test_mexCallMATLABWithTrap.m'])
``````


== Voir aussi

#nlink(<mex:mexCallMATLAB>)[mexCallMATLAB];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
