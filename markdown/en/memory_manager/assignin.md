# assignin

Assignin value to a variable in a specified variables scope.

## 📝 Syntax

- assignin(scope, variable\_name, variable\_value)

## 📥 Input argument

- scope - a string: 'global', 'base', 'caller', 'local'.
- variable\_name - a string: the name of variable destination.
- variable\_value - a variable to assign.

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

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
