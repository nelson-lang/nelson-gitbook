# isvar

Check for the existence of an variable.

## 📝 Syntax

- tf = isvar(varname)
- tf = isvar(scope, varname)

## 📥 Input argument

- scope - a string: 'global', 'base', 'caller', 'local'.
- varname - a string: variable name.

## 📤 Output argument

- tf - a logical: true if varname exists.

## 📄 Description

<b>isvar</b> checks for the existence of an variable.

## 💡 Example

```matlab
isvar('A')
A = 3
isvar('A')
isvar('global','B')
global B
isvar('global','B')
```

## 🔗 See also

[exist](../core/exist.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
