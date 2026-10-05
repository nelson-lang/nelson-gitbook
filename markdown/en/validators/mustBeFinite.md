# mustBeFinite

Checks that value is finite or raise an error.

## 📝 Syntax

- mustBeFinite(var)
- mustBeFinite(var, argPosition)
- C++: void mustBeFinite(const ArrayOfVector& args, int argPosition)

## 📥 Input argument

- var - a variable: all supported types and classes that implement isfinite methods.
- argPosition - a positive integer value: Position of input argument.

## 📄 Description


<b>mustBeFinite</b> checks that value is finite or raise an error. 

Empty values are ignored.

## 💡 Example



```matlab
mustBeFinite(1)
mustBeFinite(Inf)
```


## 🔗 See also

[isfinite](../elementary_functions/7_indexing_dimensions/isfinite.md), [isempty](../types/isempty.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
