#import "nelson_help.typ": *

= Types module

The Types module provides tools for managing and inspecting data types in Nelson.

 It provides functions to query variable types, distinguish numeric, logical, string, and object values, and work with specialized types such as sparse or integer arrays.

 The module also supports creation of objects and validation of variable names, helping ensure type safety and consistency across scripts and functions.

 For C++ extension and embedding code, see #nlink(<types:cpp_api>)[C++ value API];.

== Functions

- #nlink(<types:class>)[class]: Return a variable class name or create an old-style named object.
- #nlink(<types:cpp_api>)[cpp\_api]: C++ value API conventions for Nelson core types.
- #nlink(<types:isa>)[isa]: Return true if a variable has the requested class or type.
- #nlink(<types:iscell>)[iscell]: Return true if variable var is a cell array.
- #nlink(<types:ischar>)[ischar]: Return true if variable var is a char array.
- #nlink(<types:isclass>)[isclass]: Return true if variable var is a class object.
- #nlink(<types:isdouble>)[isdouble]: Return true if variable var is a double matrix.
- #nlink(<types:isempty>)[isempty]: Return true if variable var is an empty matrix.
- #nlink(<types:isenum>)[isenum]: Determine whether the input is an enumeration.
- #nlink(<types:isfloat>)[isfloat]: Return true if variable var is a single or double matrix.
- #nlink(<types:ishandle>)[ishandle]: Return true if variable var is a handle object.
- #nlink(<types:isint16>)[isint16]: Return true if variable var is a signed 16-bit integer type array.
- #nlink(<types:isint32>)[isint32]: Return true if variable var is a signed 32-bit integer type array.
- #nlink(<types:isint64>)[isint64]: Return true if variable var is a signed 64-bit integer type array.
- #nlink(<types:isint8>)[isint8]: Return true if variable var is a signed 8-bit integer type array.
- #nlink(<types:isinteger>)[isinteger]: Return true if variable var is a integer type array.
- #nlink(<types:islogical>)[islogical]: Return true if variable var is a logical.
- #nlink(<types:isnumeric>)[isnumeric]: Return true if variable var is a numeric array.
- #nlink(<types:isobject>)[isobject]: Return true if a variable is an object.
- #nlink(<types:isreal>)[isreal]: Return true if all imaginary part is a zero array.
- #nlink(<types:issingle>)[issingle]: Return true if variable var is a single matrix.
- #nlink(<types:issparse>)[issparse]: Return true if variable var is a sparse array.
- #nlink(<types:isstring>)[isstring]: Return true if variable var is a string array.
- #nlink(<types:isstruct>)[isstruct]: Return true if variable var is a structure.
- #nlink(<types:isuint16>)[isuint16]: Return true if variable var is an unsigned 16-bit integer type array.
- #nlink(<types:isuint32>)[isuint32]: Return true if variable var is an unsigned 32-bit integer type array.
- #nlink(<types:isuint64>)[isuint64]: Return true if variable var is an unsigned 64-bit integer type array.
- #nlink(<types:isuint8>)[isuint8]: Return true if variable var is an unsigned 8-bit integer type array.
- #nlink(<types:isvarname>)[isvarname]: Return true if input is valid variable name.
- #nlink(<types:memoize>)[memoize]: Add memoization to a function.
- #nlink(<types:missing>)[missing]: Return a missing value.
- #nlink(<types:nelson.indexing.IndexingOperation>)[nelson.indexing.IndexingOperation]: Describe one element of an indexing expression.
- #nlink(<types:nelson.indexing.IndexingOperationType>)[nelson.indexing.IndexingOperationType]: Kind of a single indexing operation.
- #nlink(<types:nelson.lang.makeUniqueStrings>)[nelson.lang.makeUniqueStrings]: Make strings unique by adding numeric suffixes.
- #nlink(<types:nelson.lang.makeValidName>)[nelson.lang.makeValidName]: Convert text to valid Nelson variable names.
- #nlink(<types:nelson.mixin.indexing.RedefinesBrace>)[nelson.mixin.indexing.RedefinesBrace]: Customize brace indexing of a class.
- #nlink(<types:nelson.mixin.indexing.RedefinesDot>)[nelson.mixin.indexing.RedefinesDot]: Customize dot indexing of a class.
- #nlink(<types:nelson.mixin.indexing.RedefinesParen>)[nelson.mixin.indexing.RedefinesParen]: Customize parentheses indexing of a class.
- #nlink(<types:nelson.mixin.util.PropertyGroup>)[nelson.mixin.util.PropertyGroup]: A titled group of properties for custom object display.
- #nlink(<types:underlyingType>)[underlyingType]: Underlying type of an array.


#nested[
#pagebreak(weak: true)
#include "class.typ"
#pagebreak(weak: true)
#include "cpp_api.typ"
#pagebreak(weak: true)
#include "isa.typ"
#pagebreak(weak: true)
#include "iscell.typ"
#pagebreak(weak: true)
#include "ischar.typ"
#pagebreak(weak: true)
#include "isclass.typ"
#pagebreak(weak: true)
#include "isdouble.typ"
#pagebreak(weak: true)
#include "isempty.typ"
#pagebreak(weak: true)
#include "isenum.typ"
#pagebreak(weak: true)
#include "isfloat.typ"
#pagebreak(weak: true)
#include "ishandle.typ"
#pagebreak(weak: true)
#include "isint16.typ"
#pagebreak(weak: true)
#include "isint32.typ"
#pagebreak(weak: true)
#include "isint64.typ"
#pagebreak(weak: true)
#include "isint8.typ"
#pagebreak(weak: true)
#include "isinteger.typ"
#pagebreak(weak: true)
#include "islogical.typ"
#pagebreak(weak: true)
#include "isnumeric.typ"
#pagebreak(weak: true)
#include "isobject.typ"
#pagebreak(weak: true)
#include "isreal.typ"
#pagebreak(weak: true)
#include "issingle.typ"
#pagebreak(weak: true)
#include "issparse.typ"
#pagebreak(weak: true)
#include "isstring.typ"
#pagebreak(weak: true)
#include "isstruct.typ"
#pagebreak(weak: true)
#include "isuint16.typ"
#pagebreak(weak: true)
#include "isuint32.typ"
#pagebreak(weak: true)
#include "isuint64.typ"
#pagebreak(weak: true)
#include "isuint8.typ"
#pagebreak(weak: true)
#include "isvarname.typ"
#pagebreak(weak: true)
#include "memoize.typ"
#pagebreak(weak: true)
#include "missing.typ"
#pagebreak(weak: true)
#include "nelson.indexing.IndexingOperation.typ"
#pagebreak(weak: true)
#include "nelson.indexing.IndexingOperationType.typ"
#pagebreak(weak: true)
#include "nelson.lang.makeUniqueStrings.typ"
#pagebreak(weak: true)
#include "nelson.lang.makeValidName.typ"
#pagebreak(weak: true)
#include "nelson.mixin.indexing.RedefinesBrace.typ"
#pagebreak(weak: true)
#include "nelson.mixin.indexing.RedefinesDot.typ"
#pagebreak(weak: true)
#include "nelson.mixin.indexing.RedefinesParen.typ"
#pagebreak(weak: true)
#include "nelson.mixin.util.PropertyGroup.typ"
#pagebreak(weak: true)
#include "underlyingType.typ"
]
