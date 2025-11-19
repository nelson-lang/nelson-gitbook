# matches

Determine if pattern matches with strings.

## 📝 Syntax

- res = matches(str, pattern)
- res = matches(str, pattern, 'IgnoreCase', true)

## 📥 Input argument

- str - a string, string array or cell of strings.
- pattern - a string, string array or cell of strings.

## 📤 Output argument

- res - a logical: true if the two matches and false otherwise.

## 📄 Description

<b>matches</b> determines if pattern matches with strings.

## 💡 Example

```matlab
matches("Nelson", 'nelSon')
matches("Nelson", 'Nelson')
str = ["yellow", "green", "blue", "brown"];
R = matches(str, ["yellow", "Brown"], 'IgnoreCase', true);

```

## 🔗 See also

[strcmp](../string/strcmp.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
