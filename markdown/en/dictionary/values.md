# values

Values of dictionary.

## 📝 Syntax

- v = values(d)
- v = values(d, 'cell')

## 📥 Input argument

- d - scalar: dictionary object.

## 📤 Output argument

- v - values.

## 📄 Description

<b>v = values(d)</b> retrieves an array containing the values of the specified dictionary,<b>d</b>.

<b>v = values(d, 'cell')</b> optionally returns the values as a cell array.

## 💡 Example

```matlab
names = ["Biil" "John" "Yann"];
wheels = [1 2 3];
d = dictionary(wheels, names)
v = values(d)
v = values(d, 'cell')

```

## 🔗 See also

[dictionary](../dictionary/dictionary.md), [keys](../dictionary/keys.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.5.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
