# insert

Add entries to a dictionary.

## 📝 Syntax

- db = insert(da, key, value)
- db = insert(da, key, value, 'Overwrite', tf)

## 📥 Input argument

- da - scalar: a dictionary object.
- key - scalar or array: key
- value - scalar or array: value. size of key must be compatible with the size of value.
- tf - true force to Overwrite, false do not overwrite and ignore change

## 📤 Output argument

- db - scalar: a dictionary object.

## 📄 Description

<b>db = insert(da, key, value)</b> adds the key-value pair to the dictionary <b>da</b>.

If the key already exists, its value is updated.

<b>d = insert(d, key, value)</b> is equivalent to <b>d[key] = value</b>.

<b>db = insert(da, key, value, 'overwrite', tf)</b> specifies whether to overwrite an existing value for the key based on the boolean parameter Overwrite.

## 💡 Example

```matlab
names = ["Apple" "Banana" "Kiwi"];
wheels = [1 2 3];
d = dictionary(wheels, names)
d = insert(d, [2 4] ,["Orange" "Citra"], 'Overwrite', false)
```

## 🔗 See also

[dictionary](../dictionary/dictionary.md), [remove](../dictionary/remove.md), [lookup](../dictionary/lookup.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.5.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
