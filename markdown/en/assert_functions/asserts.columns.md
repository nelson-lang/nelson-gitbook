# asserts.columns

Check the column count.

## 📝 Syntax

- asserts.columns(value, n)
- [res, msg] = asserts.columns(value, n)

## 📥 Input argument

- value - Value to test.
- n - Expected nonnegative finite integer scalar column count.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - assertion failure message, empty on success.

## 📄 Description

The assertion passes when size(value, 2) equals n.

Invalid n raises an argument error immediately.

## 💡 Examples

Three columns

```matlab
asserts.columns(ones(2, 3), 3);
```

Capture a column-count failure

```matlab
[res, msg] = asserts.columns(ones(2, 3), 2);
```

## 🔗 See also

[asserts.rows](../assert_functions/asserts.rows.md), [asserts.size](../assert_functions/asserts.size.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
