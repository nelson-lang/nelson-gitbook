# asserts.istrue

Check that a logical condition is true.

## 📝 Syntax

- asserts.istrue(condition)
- asserts.istrue(condition, message)
- [res, msg] = asserts.istrue(condition)
- [res, msg] = asserts.istrue(condition, message)

## 📥 Input argument

- condition - Logical scalar or array to test. Every entry must be true.
- message - Optional custom failure message.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - assertion failure message, empty on success.

## 📄 Description

This is the method-style form of assert_istrue.

With no output, a failed assertion raises an error. With outputs, the function returns false and the failure message.

## 💡 Examples

Passing condition

```matlab
asserts.istrue(3 > 2);
```

Capture a failure

```matlab
[res, msg] = asserts.istrue(false, 'condition failed');
```

## 🔗 See also

[assert](../assert_functions/assert.md), [asserts.isfalse](../assert_functions/asserts.isfalse.md), [asserts.fail](../assert_functions/asserts.fail.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
