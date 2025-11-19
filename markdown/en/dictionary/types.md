# types

Types of dictionary keys and values.

## 📝 Syntax

- [keyType, valueType] = types(d)
- keyType = types(d)

## 📥 Input argument

- d - scalar: dictionary object.

## 📤 Output argument

- keyType - string scalar: Data type of dictionary keys.
- valueType - string scalar: Data type of dictionary values.

## 📄 Description

<b>keyType = types(d)</b> returns the data type of the keys in the dictionary.

<b>[keyType, valueType] = types(d)</b> returns the data types of the keys and values in the specified dictionary. If the dictionary d is not configured, types returns a string scalar indicating<b>missing</b>.

## 💡 Example

```matlab
names = ["Biil" "John" "Yann"];
wheels = [1 2 3];
d = dictionary(wheels, names)
[keyType, valueType] = types(d)

```

## 🔗 See also

[dictionary](../dictionary/dictionary.md), [keys](../dictionary/keys.md), [values](../dictionary/values.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.5.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
