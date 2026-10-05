#import "nelson_help.typ": *

= dlsym <dynamic_link:dlsym>

Charge un symbole C\/Fortran depuis une bibliothèque dynamique

== Syntaxe

- #raw("f = dlsym(lib, symbol_name, return_type, params_types)");

== Argument d'entrée

/ lib: a dllib handle.
/ symbolname: a string: symbol to load.
/ return\_type: a string: return type of the C\/Fortran function.
/ params\_types: a cell of strings: arguments using a special syntax with differents data types.

== Argument de sortie

/ f: a dlsym handle.

== Description

#strong[dlsym]; récupère l'adresse d'une fonction exportée en tant que handle dlsym.

 Si le #strong[symbolname]; n'est pas trouvé, Nelson tente de trouver des variantes du nom selon ces règles (dans cet ordre) :

 #strong[\_symbolname];

 #strong[symbolname];

 #strong[symbolname\_];

 #strong[\_symbolname\_];

 #strong[\_SYMBOLNAME];

 #strong[SYMBOLNAME];

 #strong[SYMBOLNAME\_];

 #strong[\_SYMBOLNAME\_];

 Le nom de symbole utilisé est disponible dans le champ prototype du handle retourné.

 Si plusieurs noms de symboles sont trouvés, une erreur est levée avec les noms possibles.

 

 Attention : si les types sont mal définis, l'appel d'une fonction étrangère peut provoquer des comportements imprévus (plantage).


== Exemples

``````matlab
lib = dlopen(modulepath('dynamic_link', 'builtin'));
V = double([1 2;3 4]);
% C prototype:
% int dynlibTestMultiplyDoubleArrayWithReturn(double *x, int size)
f = dlsym(lib, 'dynlibTestMultiplyDoubleArrayWithReturn', 'int32', {'doublePtr', 'int32'});
[r1, r2] = dlcall(f, V, int32(numel(V)))
delete(f);
delete(lib);

``````

Call C getpid function

``````matlab
run([modulepath('dynamic_link'), '/examples/call_c.m']);

``````

Call fortran DASUM (blas) function

``````matlab
run([modulepath('dynamic_link'), '/examples/call_fortran.m']);
``````


== Voir aussi

#nlink(<dynamic_link:dlcall>)[dlcall];, #nlink(<dynamic_link:C_datatype>)[C\/Nelson equivalent data types];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
