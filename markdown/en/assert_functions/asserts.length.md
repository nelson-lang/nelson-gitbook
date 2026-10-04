# asserts.length

Check the length of a value.

## 📝 Syntax

- asserts.length(value, n)
- [res, msg] = asserts.length(value, n)

## 📥 Input argument

- value - Value to test.
- n - Expected nonnegative finite integer scalar length.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - assertion failure message, empty on success.

## 📄 Description

The assertion passes when the largest dimension length of value equals n.

Invalid n raises an argument error immediately.

## 💡 Examples

Length three

```matlab
asserts.length(ones(2, 3), 3);
```

Capture a length failure

```matlab
[res, msg] = asserts.length(ones(2, 3), 2);
```

## 🔗 See also

[asserts.numel](../assert_functions/asserts.numel.md), [asserts.size](../assert_functions/asserts.size.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
