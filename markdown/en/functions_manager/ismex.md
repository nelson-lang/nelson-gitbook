# ismex

Check for the existence of a mex function.

## 📝 Syntax

- tf = ismex(name)

## 📥 Input argument

- name - a string: mex function name.

## 📤 Output argument

- tf - a logical: true if mex exists.

## 📄 Description

<b>ismex</b> checks for the existence of a mex function.

## 💡 Example

```matlab
ismex('isbuiltin')
ismex('exist')
ismex('exist')
```

## 🔗 See also

[isbuiltin](../functions_manager/isbuiltin.md), [ismacro](../functions_manager/ismacro.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
