# contains

checks if string contains with pattern.

## 📝 Syntax

- tf = contains(str, pattern)
- tf = contains(str, pattern,'IgnoreCase', true)
- tf = contains(str, pattern,'IgnoreCase', false)

## 📥 Input argument

- str - a string, string array, cell of strings or categorical array.
- pattern - a string to find.

## 📤 Output argument

- tf - a matrix of logical.

## 📄 Description

<b>contains</b> returns <b>true</b> if <b>str</b> contains<b>pattern</b>.

If <b>str</b> is a categorical array, <b>contains</b> tests the category name of each element and returns a logical array of the same size. Undefined elements return <b>false</b>. <b>pattern</b> cannot be categorical.

## 💡 Examples

```matlab

str = 'To make a mountain out of a molehill';
k = contains (str, 'hill')
k = contains (str, 'molehill')
k = contains (str, 'Hill', 'IgnoreCase', true)

A = {'Nel', 'son'; 'Nelson', 'Modules'}
k = contains(A, 'son')

A = ["Nel", "son"; "Nelson", "Modules"]
k = contains(A, 'son')


```

Pattern matching on the category names of a categorical array.

```matlab
C = categorical({'winter storm', 'fire', 'Thunder Storm', ''});
tf = contains(C, "storm", 'IgnoreCase', true)
```

## 🔗 See also

[startsWith](../../string/startsWith.md), [endsWith](../../string/endsWith.md), [categorical](../../categorical/categorical.md).

## 🕔 History

| Version | 📄 Description                           |
| ------- | ---------------------------------------- |
| 1.0.0   | initial version                          |
| 2.0.0   | categorical array accepted as str input. |

<!--
## 👤 Author

Allan CORNET
-->
