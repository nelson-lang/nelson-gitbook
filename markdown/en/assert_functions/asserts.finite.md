# asserts.finite

Check that every numeric entry is finite.

## 📝 Syntax

- asserts.finite(value)
- [res, msg] = asserts.finite(value)

## 📥 Input argument

- value - Numeric or logical scalar or array.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - assertion failure message, empty on success.

## 📄 Description


The assertion passes when every entry is finite. 

NaN, Inf and -Inf fail this assertion.

## 💡 Examples

Finite values

```matlab
asserts.finite([1 2 3]);
```
Capture an infinite value

```matlab
[res, msg] = asserts.finite([1 Inf]);
```


## 🔗 See also

[asserts.nonNan](../assert_functions/asserts.nonNan.md), [asserts.real](../assert_functions/asserts.real.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
