# asserts.allfalse

Check that every logical entry is false.

## 📝 Syntax

- asserts.allfalse(value)
- [res, msg] = asserts.allfalse(value)

## 📥 Input argument

- value - Logical scalar or array.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - assertion failure message, empty on success.

## 📄 Description


The assertion passes when every logical entry is false. 

Non-logical inputs raise an argument error immediately.

## 💡 Examples

All false

```matlab
asserts.allfalse([false false]);
```
Capture a true entry

```matlab
[res, msg] = asserts.allfalse([false true]);
```


## 🔗 See also

[asserts.alltrue](../assert_functions/asserts.alltrue.md), [asserts.isfalse](../assert_functions/asserts.isfalse.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
