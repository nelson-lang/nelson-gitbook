#import "nelson_help.typ": *

= dlsym <dynamic_link:dlsym>

Loads a C\/Fortran symbol for an dynamic library.

== Syntax

- #raw("f = dlsym(lib, symbol_name, return_type, params_types)");

== Input argument

/ lib: a dllib handle.
/ symbolname: a string: symbol to load.
/ return\_type: a string: return type of the C\/Fortran function.
/ params\_types: a cell of strings: arguments using a special syntax with different data types.

== Output argument

/ f: a dlsym handle.

== Description

#strong[dlsym]; retrieves the address of an exported function as an dlsym handle.

 if #strong[symbolname]; not found, nelson try to find symbol equivalent based on these rules and in this order:

 #strong[\_symbolname];

 #strong[symbolname];

 #strong[symbolname\_];

 #strong[\_symbolname\_];

 #strong[\_SYMBOLNAME];

 #strong[SYMBOLNAME];

 #strong[SYMBOLNAME\_];

 #strong[\_SYMBOLNAME\_];

 symbol name used is available in prototype field of the returned handle.

 If multiple symbol names found, an error is raised with possible names.

 

 Warning: Uses wrong datatype definitions a foreign function can terminate unexpectedly.


== Examples

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


== See also

#nlink(<dynamic_link:dlcall>)[dlcall];, #nlink(<dynamic_link:C_datatype>)[C\/Nelson equivalent data types];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
