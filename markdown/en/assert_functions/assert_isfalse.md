# assert\_isfalse

Historical name for asserts.isfalse.

## 📝 Syntax

- assert\_isfalse(condition)
- assert\_isfalse(condition, message)
- [res, msg] = assert\_isfalse(condition)
- [res, msg] = assert\_isfalse(condition, message)

## 📥 Input argument

- condition - Logical scalar or array to test. Every entry must be false.
- message - Optional custom failure message.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - Assertion failure message, empty on success.

## 📄 Description


<b>assert\_isfalse</b> is kept for compatibility. 

For complete documentation, use [asserts.isfalse](../assert_functions/asserts.isfalse.md).

## 💡 Examples

Historical call

```matlab
assert_isfalse(3 == 4);
```
Canonical call

```matlab
asserts.isfalse(false);
```


## 🔗 See also

[asserts.isfalse](../assert_functions/asserts.isfalse.md), [assert](../assert_functions/assert.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |
| 2.0.0   | documented as historical name for asserts.isfalse |

<!--
## 👤 Author

Allan CORNET
-->
