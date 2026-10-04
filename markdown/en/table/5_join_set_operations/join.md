# join

Join tables by key variables.

## 📝 Syntax

- T = join(left, right)
- T = join(left, right, 'Keys', keys)
- T = join(left, right, 'LeftVariables', leftVars, 'RightVariables', rightVars)

## 📥 Input argument

- left, right - Input tables.
- keys - Key variable names.
- leftVars, rightVars - Variables to keep from the left and right tables.

## 📤 Output argument

- T - Joined table.

## 📄 Description

<b>join</b> combines rows from two tables using matching key values.

## 💡 Example

```matlab
L = table([1; 2], [10; 20], 'VariableNames', {'Key', 'LeftValue'});
R = table([2; 3], [200; 300], 'VariableNames', {'Key', 'RightValue'});
J = join(L, R, 'Keys', 'Key')
```

## 🔗 See also

[innerjoin](../../table/innerjoin.md), [outerjoin](../../table/outerjoin.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
