# stack

Stack table variables into rows.

## 📝 Syntax

- S = stack(T, vars)
- S = stack(T, vars, 'NewDataVariableName', name)

## 📥 Input argument

- T - Input table.
- vars - Variables to stack.

## 📤 Output argument

- S - Stacked table.

## 📄 Description

<b>stack</b> converts selected variables into a single data variable and an indicator variable.

## 💡 Example

```matlab
T = table({'a'; 'b'}, [1; 2], [3; 4], 'VariableNames', {'ID', 'X', 'Y'});
S = stack(T, {'X', 'Y'}, 'NewDataVariableName', 'Value')
```

## 🔗 See also

[unstack](../../table/unstack.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
