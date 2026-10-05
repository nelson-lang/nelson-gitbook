# asserts.real

Check that a value is real.

## 📝 Syntax

- asserts.real(value)
- [res, msg] = asserts.real(value)

## 📥 Input argument

- value - Value to test.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - assertion failure message, empty on success.

## 📄 Description


The assertion passes when value has no complex part. 

Diagnostics include the computed class and dimensions.

## 💡 Examples

Real value

```matlab
asserts.real([1 2]);
```
Capture a complex value

```matlab
[res, msg] = asserts.real(1 + i);
```


## 🔗 See also

[asserts.finite](../assert_functions/asserts.finite.md), [asserts.nonNan](../assert_functions/asserts.nonNan.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
