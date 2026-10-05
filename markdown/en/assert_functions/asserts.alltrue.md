# asserts.alltrue

Check that every logical entry is true.

## 📝 Syntax

- asserts.alltrue(value)
- [res, msg] = asserts.alltrue(value)

## 📥 Input argument

- value - Logical scalar or array.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - assertion failure message, empty on success.

## 📄 Description


The assertion passes when every logical entry is true. 

Non-logical inputs raise an argument error immediately.

## 💡 Examples

All true

```matlab
asserts.alltrue([true true]);
```
Capture a false entry

```matlab
[res, msg] = asserts.alltrue([true false]);
```


## 🔗 See also

[asserts.allfalse](../assert_functions/asserts.allfalse.md), [asserts.istrue](../assert_functions/asserts.istrue.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
