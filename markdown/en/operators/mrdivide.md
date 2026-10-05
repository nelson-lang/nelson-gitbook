# mrdivide

Matrix right division, / operator.

## 📝 Syntax

- C = mrdivide(A, B)
- C = A / B

## 📥 Input argument

- A - a variable, a table or a timetable. When the other operand is a table or timetable, it must be a scalar.
- B - a variable, a table or a timetable. When the other operand is a table or timetable, it must be a scalar.

## 📤 Output argument

- C - result of A / B

## 📄 Description


<b>C = mrdivide(A, B)</b> returns the matrix right division of A and B. 

When one operand is a table or timetable and the other operand is a scalar, <b>A / B</b> is an element-wise operation applied to every variable, identical to <b>A ./ B</b>: variable names, units and row times are kept. Any other combination with a table or timetable (two tables, or a table and a non-scalar array) is an error: use <b>./</b> instead.

## 💡 Examples



```matlab
B = ones(3, 4)
A = B *2
A / B
```
Element-wise operation between a table and a scalar.

```matlab
T = table([1; 2], [4; 8]);
T / 2
8 / T
```


## 🔗 See also

[ldivide](../operators/ldivide.md), [mldivide](../operators/mldivide.md), [rdivide](../operators/rdivide.md), [table](../table/1_create_convert_tables/table.md), [timetable](../table/1_create_convert_tables/timetable.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |
| 2.0.0   | table and timetable operands combined with a scalar (element-wise operation). |

<!--
## 👤 Author

Allan CORNET
-->
