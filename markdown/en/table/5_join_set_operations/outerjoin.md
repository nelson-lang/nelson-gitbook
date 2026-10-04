# outerjoin

Outer join of two tables.

## 📝 Syntax

- T = outerjoin(left, right)
- T = outerjoin(left, right, 'Keys', keys)
- T = outerjoin(left, right, 'MergeKeys', true)
- T = outerjoin(left, right, 'LeftVariables', leftVars, 'RightVariables', rightVars)

## 📥 Input argument

- left, right - Input tables.
- keys - Key variable names.
- leftVars, rightVars - Variables to keep from the left and right tables.

## 📤 Output argument

- T - Table containing joined rows.

## 📄 Description

<b>outerjoin</b> combines rows from both tables and preserves unmatched rows according to the selected join type. The 'MergeKeys' option merges key columns in the output.

## 💡 Example

```matlab
L = table([1; 2], [10; 20], 'VariableNames', {'Key', 'LeftValue'});
R = table([2; 3], [200; 300], 'VariableNames', {'Key', 'RightValue'});
J = outerjoin(L, R, 'Keys', 'Key')
```

## 🔗 See also

[join](../../table/join.md), [innerjoin](../../table/innerjoin.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
