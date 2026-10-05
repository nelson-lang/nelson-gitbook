# asserts.notempty

Check that a value is not empty.

## 📝 Syntax

- asserts.notempty(value)
- [res, msg] = asserts.notempty(value)

## 📥 Input argument

- value - Value to test.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - assertion failure message, empty on success.

## 📄 Description


The assertion passes when value has at least one element. 

Use asserts.empty for the inverse assertion.

## 💡 Examples

Non-empty value

```matlab
asserts.notempty(1);
```
Capture an empty value

```matlab
[res, msg] = asserts.notempty([]);
```


## 🔗 See also

[asserts.empty](../assert_functions/asserts.empty.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
