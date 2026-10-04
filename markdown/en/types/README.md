# Types module

The Types module provides tools for managing and inspecting data types in Nelson.

It provides functions to query variable types, distinguish numeric, logical, string, and object values, and work with specialized types such as sparse or integer arrays.

The module also supports creation of objects and validation of variable names, helping ensure type safety and consistency across scripts and functions.

For C++ extension and embedding code, see [C++ value API](../types/cpp_api.md).

## Functions

- [class](class.md) - Return a variable class name or create an old-style named object.
- [cpp_api](cpp_api.md) - C++ value API conventions for Nelson core types.
- [isa](isa.md) - Return true if a variable has the requested class or type.
- [iscell](iscell.md) - Return true if variable var is a cell array.
- [ischar](ischar.md) - Return true if variable var is a char array.
- [isclass](isclass.md) - Return true if variable var is a class object.
- [isdouble](isdouble.md) - Return true if variable var is a double matrix.
- [isempty](isempty.md) - Return true if variable var is an empty matrix.
- [isenum](isenum.md) - Determine whether the input is an enumeration.
- [isfloat](isfloat.md) - Return true if variable var is a single or double matrix.
- [ishandle](ishandle.md) - Return true if variable var is a handle object.
- [isint16](isint16.md) - Return true if variable var is a signed 16-bit integer type array.
- [isint32](isint32.md) - Return true if variable var is a signed 32-bit integer type array.
- [isint64](isint64.md) - Return true if variable var is a signed 64-bit integer type array.
- [isint8](isint8.md) - Return true if variable var is a signed 8-bit integer type array.
- [isinteger](isinteger.md) - Return true if variable var is a integer type array.
- [islogical](islogical.md) - Return true if variable var is a logical.
- [isnumeric](isnumeric.md) - Return true if variable var is a numeric array.
- [isobject](isobject.md) - Return true if a variable is an object.
- [isreal](isreal.md) - Return true if all imaginary part is a zero array.
- [issingle](issingle.md) - Return true if variable var is a single matrix.
- [issparse](issparse.md) - Return true if variable var is a sparse array.
- [isstring](isstring.md) - Return true if variable var is a string array.
- [isstruct](isstruct.md) - Return true if variable var is a structure.
- [isuint16](isuint16.md) - Return true if variable var is an unsigned 16-bit integer type array.
- [isuint32](isuint32.md) - Return true if variable var is an unsigned 32-bit integer type array.
- [isuint64](isuint64.md) - Return true if variable var is an unsigned 64-bit integer type array.
- [isuint8](isuint8.md) - Return true if variable var is an unsigned 8-bit integer type array.
- [isvarname](isvarname.md) - Return true if input is valid variable name.
- [memoize](memoize.md) - Add memoization to a function.
- [missing](missing.md) - Return a missing value.
- [nelson.indexing.IndexingOperation](nelson.indexing.IndexingOperation.md) - Describe one element of an indexing expression.
- [nelson.indexing.IndexingOperationType](nelson.indexing.IndexingOperationType.md) - Kind of a single indexing operation.
- [nelson.lang.makeUniqueStrings](nelson.lang.makeUniqueStrings.md) - Make strings unique by adding numeric suffixes.
- [nelson.lang.makeValidName](nelson.lang.makeValidName.md) - Convert text to valid Nelson variable names.
- [nelson.mixin.indexing.RedefinesBrace](nelson.mixin.indexing.RedefinesBrace.md) - Customize brace indexing of a class.
- [nelson.mixin.indexing.RedefinesDot](nelson.mixin.indexing.RedefinesDot.md) - Customize dot indexing of a class.
- [nelson.mixin.indexing.RedefinesParen](nelson.mixin.indexing.RedefinesParen.md) - Customize parentheses indexing of a class.
- [nelson.mixin.util.PropertyGroup](nelson.mixin.util.PropertyGroup.md) - A titled group of properties for custom object display.
- [underlyingType](underlyingType.md) - Underlying type of an array.
