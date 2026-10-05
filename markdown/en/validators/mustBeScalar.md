# mustBeScalar

Checks that value is a scalar or raise an error.

## 📝 Syntax

- mustBeScalar(var)
- mustBeScalar(var, argPosition)
- C++: void mustBeScalar(const ArrayOfVector& args, int argPosition)

## 📥 Input argument

- var - a variable: all supported types and classes that implement isscalar method.
- argPosition - a positive integer value: Position of input argument.

## 📄 Description


<b>mustBeScalar</b> checks that value is a scalar or raise an error.

## 💡 Example



```matlab
mustBeScalar(true)
mustBeScalar(zeros(0, 1))
mustBeScalar([true false])
```


## 🔗 See also

[isscalar](../elementary_functions/7_indexing_dimensions/isscalar.md), [mustBeScalarOrEmpty](../validators/mustBeScalarOrEmpty.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.15.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
