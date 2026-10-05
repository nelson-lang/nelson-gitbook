#import "nelson_help.typ": *

= cpp\_api <types:cpp_api>

C++ value API conventions for Nelson core types.

== Syntax

- #raw("ArrayOf::doubleScalar(value)");
- #raw("value.asDoubleScalar()");
- #raw("value.rows()");

== Description

The C++ value API is used by native modules, extension code, and embedded integrations to create, inspect, and extract Nelson values. The main entry point is the public header #strong[ArrayOf.hpp];, which exposes the #strong[NELSON\_ARRAYOF\_API\_VERSION]; macros for version checks.

 Factory functions on #strong[ArrayOf]; describe the value they create directly. Common examples include #strong[doubleScalar];, #strong[singleScalar];, #strong[logicalScalar];, #strong[int32Scalar];, #strong[doubleRowVector];, #strong[doubleMatrix2d];, #strong[cellArray];, #strong[structArray];, #strong[stringArray];, #strong[table];, and #strong[handle];.

 Simple property accessors use short noun names such as #strong[rows];, #strong[columns];, #strong[elementCount];, #strong[dimensions];, #strong[dataClass];, #strong[fieldNames];, and #strong[referenceCount];. These functions must stay cheap and must not hide allocation.

 Names beginning with #strong[as]; extract an existing C++ value from a Nelson value, for example #strong[asDoubleScalar];, #strong[asUtf8String];, #strong[asWideString];, #strong[asIndexVector];, and #strong[asFunctionHandle];.

 Names beginning with #strong[to]; create a new representation. Names beginning with #strong[toAllocated];, such as #strong[toAllocatedUtf8CString];, make ownership and allocation explicit.

 Mutation and state follow the usual verb prefixes: #strong[setX]; mutates a property, #strong[isX]; tests state, and #strong[makeX]; transforms the value in place.

 The API preserves fast paths: scalar inline storage, cached dimensions in #strong[Data];, copy-on-write ownership, and pointer access without hidden allocation. Pointers returned by value objects remain valid only while the owning value and its storage state remain valid.


== Examples

Create and inspect a scalar value.

``````matlab
ArrayOf value = ArrayOf::doubleScalar(3.0);
double scalar = value.asDoubleScalar();
indexType rows = value.rows();
indexType cols = value.columns();
``````

Create a cell array and read simple properties.

``````matlab
ArrayOfVector items;
items << ArrayOf::doubleScalar(1.0);
items << ArrayOf::stringArray("name");
ArrayOf cells = ArrayOf::cellArray(items);
indexType count = cells.elementCount();
``````


== See also

#nlink(<types:class>)[class];, #nlink(<types:isa>)[isa];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
