# isgraphics

Check for graphics object.

## 📝 Syntax

- tf = isgraphics(GO)
- tf = isgraphics(GO, type)

## 📥 Input argument

- GO - variable or graphics object.
- type - a character vector or scalar string: 'axes', 'line', 'image', 'root', 'text', 'figure'.

## 📤 Output argument

- tf - a scalar logical.

## 📄 Description

<b>isgraphics</b> checks is variable is an graphics object.

## 💡 Example

```matlab
f = figure()
tf = isgraphics(f)
tf = isgraphics(f, 'figure')
tf = isgraphics(f, 'text')
f = 3
tf = isgraphics(f)
```

## 🔗 See also

[isprop](../handle/isprop.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
