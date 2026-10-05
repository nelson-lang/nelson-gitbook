# matches

Determine if pattern matches with strings.

## 📝 Syntax

- res = matches(str, pattern)
- res = matches(str, pattern, 'IgnoreCase', true)

## 📥 Input argument

- str - a string, string array, cell of strings or categorical array.
- pattern - a string, string array or cell of strings.

## 📤 Output argument

- res - a logical: true if the two matches and false otherwise.

## 📄 Description


<b>matches</b> determines if pattern matches with strings. 

If <b>str</b> is a categorical array, <b>matches</b> tests the category name of each element and returns a logical array of the same size. Undefined elements return <b>false</b>. <b>pattern</b> cannot be categorical.

## 💡 Examples



```matlab
matches("Nelson", 'nelSon')
matches("Nelson", 'Nelson')
str = ["yellow", "green", "blue", "brown"];
R = matches(str, ["yellow", "Brown"], 'IgnoreCase', true);

```
Pattern matching on the category names of a categorical array.

```matlab
C = categorical({'winter storm', 'fire', 'Thunder Storm', ''});
tf = matches(C, "FIRE", 'IgnoreCase', true)
```


## 🔗 See also

[strcmp](../../string/8_compare_text/strcmp.md), [categorical](../../categorical/categorical.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |
| 2.0.0   | categorical array accepted as str input. |

<!--
## 👤 Author

Allan CORNET
-->
