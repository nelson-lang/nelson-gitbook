# assignin

Assignin value to a variable in a specified variables scope.

## 📝 Syntax

- assignin(scope, variable_name, variable_value)

## 📥 Input argument

- scope - a string: 'global', 'base', 'caller', 'local'.
- variable_name - a string: the name of variable destination.
- variable_value - a variable to assign.

## 📄 Description

<b>assignin</b> assign value to a variable in a specified variables scope.

## 💡 Example

```matlab
assignin('base', 'X', 33);
Y = acquirevar('base', 'X');
```

## 🔗 See also

[assignin](../memory_manager/assignin.md), [who](../memory_manager/who.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
