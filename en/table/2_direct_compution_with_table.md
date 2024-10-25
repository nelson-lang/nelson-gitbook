# Direct computation with Table

## Description

  <p>You can perform calculations directly on tableswithout needing to index into them.</p>
  <p>To perform such operations using the same syntax as you would for arrays, your tables must meet several criteria:</p>
  <p>All variables within the table must have data types that support the intended calculations (e.g., numeric or logical types).</p>
  <p>When performing an operation where only one operand is a table, the other operand must be either a numeric or logical array.</p>
  <p>For operations involving two tables, they must have compatible sizes (i.e., the same number of rows and columns or the operation must make sense for the structures involved).</p>
  <p/>
  <p>Below is an example that demonstrates how to perform calculations without explicitly indexing into the table.</p>

## Example

Adding a New Column

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
abs(sin(T)) + 1
```

## See also

[abs](../elementary_functions/abs.md), [acos](../trigonometric_functions/acos.md), [acosh](../trigonometric_functions/acosh.md), [acot](acot.html), [acotd](acotd.html), [acoth](acoth.html), [acsc](acsc.html), [acscd](acscd.html), [acsch](acsch.html), [asec](asec.html), [asecd](asecd.html), [asech](asech.html), [asin](../trigonometric_functions/asin.md), [asind](../trigonometric_functions/asind.md), [asinh](../trigonometric_functions/asinh.md), [atan](../trigonometric_functions/atan.md), [atand](../trigonometric_functions/atand.md), [atanh](../trigonometric_functions/atanh.md), [ceil](../elementary_functions/ceil.md), [cosd](cosd.html), [cosh](cosh.html), [cospi](../trigonometric_functions/cospi.md), [cot](cot.html), [cotd](cotd.html), [coth](coth.html), [csc](csc.html), [cscd](cscd.html), [csch](csch.html), [exp](../elementary_functions/exp.md), [fix](../elementary_functions/fix.md), [floor](../elementary_functions/floor.md), [log](../elementary_functions/log.md), [log10](../elementary_functions/log10.md), [log1p](../elementary_functions/log1p.md), [log2](../elementary_functions/log2.md), [nextpow2](../elementary_functions/nextpow2.md), [round](../elementary_functions/round.md), [sec](sec.html), [secd](secd.html), [sech](sech.html), [sin](sin.html), [sind](sind.html), [sinh](sinh.html), [sinpi](../trigonometric_functions/sinpi.md), [sqrt](../elementary_functions/sqrt.md), [tan](../trigonometric_functions/tan.md), [tand](../trigonometric_functions/tand.md), [tanh](../trigonometric_functions/tanh.md), [var](../statistics/var.md), [acosd](../trigonometric_functions/acosd.md), [not](../operators/not.md), [plus](plus.html), [minus](../elementary_functions/minus.md), [times](times.html), [eq](eq.html), [ge](ge.html), [gt](gt.html), [le](le.html), [ne](ne.html), [lt](lt.html), [mrdivide](../operators/mrdivide.md), [rem](../elementary_functions/rem.md), [power](../operators/power.md), [pow2](../elementary_functions/pow2.md), [or](../operators/or.md), [mod](../elementary_functions/rem.md), [ldivide](../operators/ldivide.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.9.0   | initial version |

## Author

Allan CORNET
