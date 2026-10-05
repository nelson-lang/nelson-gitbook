# mustBeVectorOrEmpty

Checks that value is a vector or empty, or raise an error.

## 📝 Syntax

- mustBeVectorOrEmpty(var)
- mustBeVectorOrEmpty(var, argPosition)
- C++: void mustBeVectorOrEmpty(const ArrayOfVector& args, int argPosition)

## 📥 Input argument

- var - a variable: all supported types and classes that implement isvector and isempty methods.
- argPosition - a positive integer value: Position of input argument.

## 📄 Description


<b>mustBeVectorOrEmpty</b> checks that value is a vector or empty, or raise an error.

## 💡 Example



```matlab
mustBeVectorOrEmpty([1 2])
mustBeVectorOrEmpty(zeros(0, 3))
mustBeVectorOrEmpty(ones(2))
```


## 🔗 See also

[isvector](../elementary_functions/7_indexing_dimensions/isvector.md), [isempty](../types/isempty.md), [mustBeVector](../validators/mustBeVector.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.15.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
