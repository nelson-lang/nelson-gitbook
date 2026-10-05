# isstr

Determine whether input is a character array (deprecated).

## 📝 Syntax

- tf = isstr(x)

## 📥 Input argument

- x - a value, any type.

## 📤 Output argument

- tf - a logical: <b>true</b> if <b>x</b> is a character array, <b>false</b> otherwise.

## 📄 Description


<b>isstr</b> is a deprecated alias for <b>ischar</b>. It returns <b>true</b> when <b>x</b> is a character array and <b>false</b> otherwise. 

A string array (created with double quotes) is not a character array, so <b>isstr</b> returns <b>false</b> for it. 

<b>isstr</b> is kept for compatibility with legacy code. Use <b>ischar</b> instead in new code.

## 💡 Examples

A character array:

```matlab
tf = isstr('hello')
```
A numeric value is not a character array:

```matlab
tf = isstr(42)
```
A string is not a character array:

```matlab
tf = isstr("hello")
```


## 🔗 See also

[ischar](../types/ischar.md), [isstring](../types/isstring.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
