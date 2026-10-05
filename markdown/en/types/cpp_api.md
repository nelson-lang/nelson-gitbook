# cpp\_api

C++ value API conventions for Nelson core types.

## 📝 Syntax

- ArrayOf::doubleScalar(value)
- value.asDoubleScalar()
- value.rows()

## 📄 Description


The C++ value API is used by native modules, extension code, and embedded integrations to create, inspect, and extract Nelson values. The main entry point is the public header <b>ArrayOf.hpp</b>, which exposes the <b>NELSON\_ARRAYOF\_API\_VERSION</b> macros for version checks. 

Factory functions on <b>ArrayOf</b> describe the value they create directly. Common examples include <b>doubleScalar</b>, <b>singleScalar</b>, <b>logicalScalar</b>, <b>int32Scalar</b>, <b>doubleRowVector</b>, <b>doubleMatrix2d</b>, <b>cellArray</b>, <b>structArray</b>, <b>stringArray</b>, <b>table</b>, and <b>handle</b>. 

Simple property accessors use short noun names such as <b>rows</b>, <b>columns</b>, <b>elementCount</b>, <b>dimensions</b>, <b>dataClass</b>, <b>fieldNames</b>, and <b>referenceCount</b>. These functions must stay cheap and must not hide allocation. 

Names beginning with <b>as</b> extract an existing C++ value from a Nelson value, for example <b>asDoubleScalar</b>, <b>asUtf8String</b>, <b>asWideString</b>, <b>asIndexVector</b>, and <b>asFunctionHandle</b>. 

Names beginning with <b>to</b> create a new representation. Names beginning with <b>toAllocated</b>, such as <b>toAllocatedUtf8CString</b>, make ownership and allocation explicit. 

Mutation and state follow the usual verb prefixes: <b>setX</b> mutates a property, <b>isX</b> tests state, and <b>makeX</b> transforms the value in place. 

The API preserves fast paths: scalar inline storage, cached dimensions in <b>Data</b>, copy-on-write ownership, and pointer access without hidden allocation. Pointers returned by value objects remain valid only while the owning value and its storage state remain valid.

## 💡 Examples

Create and inspect a scalar value.

```matlab
ArrayOf value = ArrayOf::doubleScalar(3.0);
double scalar = value.asDoubleScalar();
indexType rows = value.rows();
indexType cols = value.columns();
```
Create a cell array and read simple properties.

```matlab
ArrayOfVector items;
items << ArrayOf::doubleScalar(1.0);
items << ArrayOf::stringArray("name");
ArrayOf cells = ArrayOf::cellArray(items);
indexType count = cells.elementCount();
```


## 🔗 See also

[class](../types/class.md), [isa](../types/isa.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
