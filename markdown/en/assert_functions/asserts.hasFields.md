# asserts.hasFields

Check that a structure has all expected fields.

## 📝 Syntax

- asserts.hasFields(s, expectedFields)
- [res, msg] = asserts.hasFields(s, expectedFields)

## 📥 Input argument

- s - Structure value.
- expectedFields - Field name list as a character vector, string scalar, string array or cell of character vectors.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - assertion failure message, empty on success.

## 📄 Description


The assertion passes when every expected field exists in s. 

Extra fields in s are allowed.

## 💡 Examples

Fields present

```matlab
S = struct('a', 1, 'b', 2); asserts.hasFields(S, {'a', 'b'});
```
Capture a missing field

```matlab
S = struct('a', 1); [res, msg] = asserts.hasFields(S, {'a', 'b'});
```


## 🔗 See also

[asserts.hasField](../assert_functions/asserts.hasField.md), [asserts.fields](../assert_functions/asserts.fields.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
