# asserts.hasField

Check that a structure has a field.

## 📝 Syntax

- asserts.hasField(s, fieldName)
- [res, msg] = asserts.hasField(s, fieldName)

## 📥 Input argument

- s - Structure value.
- fieldName - Expected field name as a character vector or string scalar.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - assertion failure message, empty on success.

## 📄 Description

The assertion passes when s contains fieldName.

Invalid non-structure inputs raise an argument error immediately.

## 💡 Examples

Existing field

```matlab
S = struct('a', 1); asserts.hasField(S, 'a');
```

Capture a missing field

```matlab
S = struct('a', 1); [res, msg] = asserts.hasField(S, 'b');
```

## 🔗 See also

[asserts.hasFields](../assert_functions/asserts.hasFields.md), [asserts.fields](../assert_functions/asserts.fields.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
