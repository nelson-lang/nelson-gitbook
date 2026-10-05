# startsWith

checks if string starts with pattern.

## 📝 Syntax

- tf = startsWith(str, pattern)
- tf = startsWith(str, pattern,'IgnoreCase', true)
- tf = startsWith(str, pattern,'IgnoreCase', false)

## 📥 Input argument

- str - a string, string array, cell of strings or categorical array.
- pattern - a string to find.

## 📤 Output argument

- tf - a matrix of logical.

## 📄 Description


<b>startsWith</b> returns <b>true</b> if <b>str</b> starts with<b>pattern</b>. 

If <b>str</b> is a categorical array, <b>startsWith</b> tests the category name of each element and returns a logical array of the same size. Undefined elements return <b>false</b>. <b>pattern</b> cannot be categorical.

## 💡 Examples



```matlab

str = 'To make a mountain out of a molehill';
k = startsWith (str, 'in')
k = startsWith (str, 'to')
k = startsWith (str, 'to', 'IgnoreCase', true)

A = {'Nel', 'son'; 'Nelson', 'Modules'}
k = startsWith(A, 'Nel')

A = ["Nel", "son"; "Nelson", "Modules"];
k = startsWith(A, "Nel")


```
Pattern matching on the category names of a categorical array.

```matlab
C = categorical({'winter storm', 'fire', 'Thunder Storm', ''});
tf = startsWith(C, "thunder", 'IgnoreCase', true)
```


## 🔗 See also

[endsWith](../../string/3_find_replace/endsWith.md), [contains](../../string/3_find_replace/contains.md), [categorical](../../categorical/categorical.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |
| 2.0.0   | categorical array accepted as str input. |

<!--
## 👤 Author

Allan CORNET
-->
