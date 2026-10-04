# isKey

Determine whether an object contains a key.

## 📝 Syntax

- tf = isKey(obj, key)

## 📥 Input argument

- obj - object that implements keyed lookup.
- key - key to search for.

## 📤 Output argument

- tf - logical value: true when the key exists.

## 📄 Description

isKey dispatches key lookup to the object type passed as first argument.

If the first argument does not implement keyed lookup, Nelson reports that the function is not implemented for that type.

## Used function(s)

    dictionary

## 💡 Example

Test whether a dictionary contains a key.

```matlab
d = dictionary(["one" "two"], [1 2]);
tf = isKey(d, "two")
```

## 🔗 See also

[dictionary](../dictionary/dictionary.md), [lookup](../handle/lookup.md), [insert](../handle/insert.md), [remove](../handle/remove.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
