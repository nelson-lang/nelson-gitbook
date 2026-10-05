# addvars

Add variables to a table or timetable.

## 📝 Syntax

- TB = addvars(TA, X)
- TB = addvars(TA, X1, ... , XN, 'NewVariableNames', names)
- TB = addvars(TA, X, 'Before', varName)
- TB = addvars(TA, X, 'After', varName)

## 📥 Input argument

- TA - Input table or timetable.
- X, X1, ... , XN - Variable data to add. Each variable must have the same number of rows as <b>TA</b>.
- names - Names for the new variables.
- varName - Reference variable used with <b>Before</b> or <b>After</b>.

## 📤 Output argument

- TB - Table or timetable with added variables.

## 📄 Description


<b>addvars</b> adds one or more variables to a table and updates <b>T.Properties.VariableNames</b>. 

New variables are appended by default. Use <b>Before</b> or <b>After</b> to choose the insertion position. 

Without <b>NewVariableNames</b>, a variable passed by name keeps that name and any other input is named <b>Var</b> followed by its column number; a name already used by the table or by another new variable is suffixed with <b>\_1</b>, <b>\_2</b>, ... 

For a timetable, the row times and the timetable properties are kept.

## 💡 Examples

Add a variable at the end of a table

```matlab
T = table([1; 2], 'VariableNames', {'A'});
T = addvars(T, [3; 4], 'NewVariableNames', {'B'})
```
Add a variable before an existing variable

```matlab
T = table([1; 2], [5; 6], 'VariableNames', {'A', 'C'});
T = addvars(T, [3; 4], 'NewVariableNames', {'B'}, 'Before', 'C')
```


## 🔗 See also

[table](../../table/1_create_convert_tables/table.md), [movevars](../../table/4_sort_filter_rearrange/movevars.md), [removevars](../../table/4_sort_filter_rearrange/removevars.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
