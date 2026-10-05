# asserts.fields

Check the exact set of structure fields.

## 📝 Syntax

- asserts.fields(s, expectedFields)
- [res, msg] = asserts.fields(s, expectedFields)

## 📥 Input argument

- s - Structure value.
- expectedFields - Exact field name list. Field order is ignored.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - assertion failure message, empty on success.

## 📄 Description


The assertion passes when s has no missing field and no extra field. 

Use asserts.hasFields when extra fields are allowed.

## 💡 Examples

Exact field set

```matlab
S = struct('a', 1, 'b', 2); asserts.fields(S, {'b', 'a'});
```
Capture an extra field

```matlab
S = struct('a', 1, 'b', 2); [res, msg] = asserts.fields(S, {'a'});
```


## 🔗 See also

[asserts.hasFields](../assert_functions/asserts.hasFields.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
