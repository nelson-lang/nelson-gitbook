# Direct computation with Table



## 📄 Description


You can perform calculations directly on tableswithout needing to index into them. 

To perform such operations using the same syntax as you would for arrays, your tables must meet several criteria: 

All variables within the table must have data types that support the intended calculations (e.g., numeric or logical types). 

When performing an operation where only one operand is a table, the other operand must be either a numeric or logical array. 

For operations involving two tables, they must have compatible sizes (i.e., the same number of rows and columns or the operation must make sense for the structures involved). 

The matrix operators <b>\*</b>, <b>/</b> and <b>\\</b> perform element-wise multiplication and division (like <b>.\*</b>, <b>./</b> and <b>.\\</b>) when one operand is a table or timetable and the other operand is a scalar. Any other combination is an error: use the element-wise operators instead. 

The unary operators <b>-</b> and <b>+</b> apply to every variable of a table or timetable. 

 

Below is an example that demonstrates how to perform calculations without explicitly indexing into the table.

## 💡 Example

Direct computation on Tables

```matlab
% Create a sample table with sensor data
T = table([1.5; -2.3; 4.7], [0.5; 1.1; -0.7], [-1; 2; 3], ...
          'VariableNames', {'Voltage', 'Current', 'Resistance'});

% Apply functions directly to the table columns
abs(T)
acos(T)
acosh(T)
T > 1
T + 2
T .* T
T * 2
10 / T
-T
abs(sin(T)) + 1

```


## 🔗 See also

[abs](../../elementary_functions/2_elementary_math/abs.md), [acos](../../trigonometric_functions/acos.md), [acosh](../../trigonometric_functions/acosh.md), [acot](../../trigonometric_functions/acot.md), [acotd](../../trigonometric_functions/acotd.md), [acoth](../../trigonometric_functions/acoth.md), [acsc](../../trigonometric_functions/acsc.md), [acscd](../../trigonometric_functions/acscd.md), [acsch](../../trigonometric_functions/acsch.md), [asec](../../trigonometric_functions/asec.md), [asecd](../../trigonometric_functions/asecd.md), [asech](../../trigonometric_functions/asech.md), [asin](../../trigonometric_functions/asin.md), [asind](../../trigonometric_functions/asind.md), [asinh](../../trigonometric_functions/asinh.md), [atan](../../trigonometric_functions/atan.md), [atand](../../trigonometric_functions/atand.md), [atanh](../../trigonometric_functions/atanh.md), [ceil](../../elementary_functions/2_elementary_math/ceil.md), [cosd](../../trigonometric_functions/cosd.md), [cosh](../../trigonometric_functions/cosh.md), [cospi](../../trigonometric_functions/cospi.md), [cot](../../trigonometric_functions/cot.md), [cotd](../../trigonometric_functions/cotd.md), [coth](../../trigonometric_functions/coth.md), [csc](../../trigonometric_functions/csc.md), [cscd](../../trigonometric_functions/cscd.md), [csch](../../trigonometric_functions/csch.md), [exp](../../elementary_functions/2_elementary_math/exp.md), [fix](../../elementary_functions/2_elementary_math/fix.md), [floor](../../elementary_functions/2_elementary_math/floor.md), [log](../../elementary_functions/2_elementary_math/log.md), [log10](../../elementary_functions/2_elementary_math/log10.md), [log1p](../../elementary_functions/2_elementary_math/log1p.md), [log2](../../elementary_functions/2_elementary_math/log2.md), [nextpow2](../../elementary_functions/2_elementary_math/nextpow2.md), [round](../../elementary_functions/2_elementary_math/round.md), [sec](../../trigonometric_functions/sec.md), [secd](../../trigonometric_functions/secd.md), [sech](../../trigonometric_functions/sech.md), [sin](../../trigonometric_functions/sin.md), [sind](../../trigonometric_functions/sind.md), [sinh](../../trigonometric_functions/sinh.md), [sinpi](../../trigonometric_functions/sinpi.md), [sqrt](../../elementary_functions/2_elementary_math/sqrt.md), [tan](../../trigonometric_functions/tan.md), [tand](../../trigonometric_functions/tand.md), [tanh](../../trigonometric_functions/tanh.md), [var](../../statistics/1_descriptive_statistics_visualization/var.md), [acosd](../../trigonometric_functions/acosd.md), [not](../../operators/not.md), [plus](../../operators/plus.md), [minus](../../operators/minus.md), [times](../../operators/times.md), [eq](../../operators/eq.md), [ge](../../operators/ge.md), [gt](../../operators/gt.md), [le](../../operators/le.md), [ne](../../operators/ne.md), [lt](../../operators/lt.md), [mrdivide](../../operators/mrdivide.md), [rem](../../elementary_functions/2_elementary_math/rem.md), [power](../../operators/power.md), [pow2](../../elementary_functions/2_elementary_math/pow2.md), [or](../../operators/or.md), [mod](../../elementary_functions/2_elementary_math/mod.md), [ldivide](../../operators/ldivide.md), [mtimes](../../operators/mtimes.md), [mldivide](../../operators/mldivide.md), [uminus](../../operators/uminus.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.9.0   | initial version |
| 2.0.0   | mtimes (*), mrdivide (/) and mldivide (\) perform element-wise operations between a table or timetable and a scalar. |

<!--
## 👤 Author

Allan CORNET
-->
