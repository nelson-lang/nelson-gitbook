# asserts.sameSize

Check that two values have the same size.

## 📝 Syntax

- asserts.sameSize(left, right)
- [res, msg] = asserts.sameSize(left, right)

## 📥 Input argument

- left - first value.
- right - second value.

## 📤 Output argument

- res - true if both values have the same size.
- msg - the assertion failure message.

## 📄 Description

<b>asserts.sameSize</b> compares dimensions.

## Used function(s)

size

## 💡 Example

Check matching sizes:

```matlab
asserts.sameSize(ones(2, 3), zeros(2, 3));
```

## 🔗 See also

[asserts.size](../assert_functions/asserts.size.md), [asserts.numel](../assert_functions/asserts.numel.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
