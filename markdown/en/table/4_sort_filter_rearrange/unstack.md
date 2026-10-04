# unstack

Unstack rows into table variables.

## 📝 Syntax

- U = unstack(S, dataVar, indicatorVar)

## 📥 Input argument

- S - Input stacked table.
- dataVar - Data variable name.
- indicatorVar - Indicator variable name.

## 📤 Output argument

- U - Unstacked table.

## 📄 Description

<b>unstack</b> creates variables from values in an indicator variable.

## 💡 Example

```matlab
S = table({'a'; 'a'; 'b'; 'b'}, {'X'; 'Y'; 'X'; 'Y'}, [1; 3; 2; 4], 'VariableNames', {'ID', 'Measure', 'Value'});
U = unstack(S, 'Value', 'Measure')
```

## 🔗 See also

[stack](../../table/stack.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
