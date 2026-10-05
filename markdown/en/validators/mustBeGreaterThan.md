# mustBeGreaterThan

Checks that value is greater than another value or issue error.

## 📝 Syntax

- mustBeGreaterThan(var, c)
- mustBeGreaterThan(var, c, argPosition)
- C++: void mustBeGreaterThan(const ArrayOfVector& args, const ArrayOf &c, int argPosition)

## 📥 Input argument

- var - a variable: array of any type supporting the comparison operator (numeric, logical, char, string, ...). An empty value is always accepted.
- c - a variable: scalar or array with a size compatible with var (implicit expansion).
- argPosition - a positive integer value: Position of input argument.

## 📄 Description


<b>mustBeGreaterThan</b> checks that value is greater than another value or issue error.

## 💡 Examples



```matlab
mustBeGreaterThan(1, 0)
mustBeGreaterThan([2 3 4],2)
```
Compare with an array of compatible size

```matlab
upper = [5 10 15];
mustBeGreaterThan([6 11 16], upper - 1)
mustBeGreaterThan([6 11 16], upper)
```


## 🔗 See also

[mustBeNumeric](../validators/mustBeNumeric.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |
| 2.0.0   | c can be an array with a size compatible with var; inputs are no longer restricted to real numeric or logical values. |

<!--
## 👤 Author

Allan CORNET
-->
