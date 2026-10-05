#import "nelson_help.typ": *

= dlcall <dynamic_link:dlcall>

C or Fortran Foreign function call.

== Syntax

- #raw("[x1, ... , xN] = dlcall(dlsym_handle, arg1, ..., argN)");

== Input argument

/ dlsym\_handle: a dlsym handle.
/ arg1, ..., argN: input arguments.

== Output argument

/ \[x1, ... , xN\]: output values.

== Description

#strong[dlcall]; calls an external C or Fortran function loaded from an shared library.

 #strong[dlcall]; validates input argument types before calling based on dlsym handle definition.


== Examples

``````matlab
lib = dlopen([modulepath('nelson', 'builtin'), '/libnlsDynamic_link', getdynlibext()]);
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

#nlink(<dynamic_link:dlsym>)[dlsym];, #nlink(<dynamic_link:C_datatype>)[C\/Nelson equivalent data types];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
