# asserts.isequal

Check that computed and expected values are equal.

## 📝 Syntax

- asserts.isequal(computed, expected)
- asserts.isequal(computed, expected, message)
- [res, msg] = asserts.isequal(computed, expected)

## 📥 Input argument

- computed - Computed value.
- expected - Expected value.
- message - Optional custom failure message.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - assertion failure message, empty on success.

## 📄 Description


This is the method-style form of assert\_isequal. 

Failure diagnostics include class, dimensions and, for dense numeric or logical arrays of the same size, the first different index.

## 💡 Examples

Equal arrays

```matlab
asserts.isequal([1 2], [1 2]);
```
Capture a diagnostic

```matlab
[res, msg] = asserts.isequal([1 2], [1 3]);
```


## 🔗 See also

[assert_isapprox](../assert_functions/assert_isapprox.md), [asserts.notEqual](../assert_functions/asserts.notEqual.md), [asserts.diff](../assert_functions/asserts.diff.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
