#import "nelson_help.typ": *

= libpointer <dynamic_link:libpointer>

Creates an C pointer object usable in Nelson.

== Syntax

- #raw("ptr = libpointer()");
- #raw("ptr = libpointer(datatype)");
- #raw("ptr = libpointer(datatype, value)");

== Input argument

/ datatype: a string: data type.
/ value: a nelson variable compatible with datatype.

== Output argument

/ ptr: a libpointer handle.

== Description

This is an advanced feature to manipulate C pointers.

 #strong[ptr \= libpointer()]; creates an NULL pointer.


== Examples

``````matlab
p = libpointer('int8Ptr', int8([3 4]));
p.isNull()
p.DataType
p.Value
``````

``````matlab
NLSDYNAMIC_LINK_IMPEXP double *multiplicationDoubleByReference(double *x)
{
    *x *= 2;
    return x;
}
``````

``````matlab
x = 133.3;
xPtr = libpointer('doublePtr', x);
path_ref = modulepath('dynamic_link', 'builtin');
lib = dlopen(path_ref);
f = dlsym(lib, 'multiplicationDoubleByReference', 'libpointer', {'doublePtr'});
[r1, r2] = dlcall(f, xPtr);
r2
% r1 is an libpointer of type '' (voidPointer) and it need to be change type and size.
r1.setdatatype('doublePtr');
r1.reshape(1, 1);
get(r1)


``````


== See also

#nlink(<dynamic_link:C_datatype>)[C\/Nelson equivalent data types];, #nlink(<dynamic_link:libpointer_isNull>)[isNull];, #nlink(<dynamic_link:libpointer_reshape>)[libpointer.reshape];, #nlink(<dynamic_link:libpointer_setdatatype>)[libpointer.setdatatype];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
