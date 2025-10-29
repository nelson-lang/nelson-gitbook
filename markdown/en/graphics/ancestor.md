# ancestor

Ancestor of graphics object.

## 📝 Syntax

- p = ancestor(h, type)
- p = ancestor(h, type, 'toplevel')

## 📥 Input argument

- h - graphics object
- type - a row vector character or cell of strings:
- 'toplevel' - a row vector character: return the highest parent in the object hierarchy that matches the condition.

## 📤 Output argument

- p - a graphics object or []

## 📄 Description

<b>ancestor</b> returns the handle of the specified object's ancestor of a given type.

## 💡 Example

```matlab
f = figure();
ax = gca();
s = surf(peaks);
AX = ancestor(s, 'axes')
F = ancestor(s, 'figure')
R = ancestor(s, 'root')
```

## 🔗 See also

[gcf](../graphics/gcf.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
