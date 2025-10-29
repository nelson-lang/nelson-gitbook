# varunlock

Unlocks a variable.

## 📝 Syntax

- varunlock(scope, variable_name)

## 📥 Input argument

- scope - a string: 'global', 'base', 'caller', 'local'.
- variable_name - a string: variable name.

## 📄 Description

<b>varunlock</b> unlocks a variable.

## 💡 Example

```matlab
y = 3;
varislock('local', 'y')
varlock('local', 'y')
varislock('local', 'y')
y = 4
varunlock('local', 'y')
varislock('local', 'y')
y = 4
varlock('local', 'ans')
varislock('local', 'ans')


```

## 🔗 See also

[varislock](../memory_manager/varislock.md), [varlock](../memory_manager/varlock.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
