#import "../nelson_help.typ": *

= Direct computation with Table <table:7_apply_functions.2_direct_computation_with_table>



== Description

You can perform calculations directly on tableswithout needing to index into them.

 To perform such operations using the same syntax as you would for arrays, your tables must meet several criteria:

 All variables within the table must have data types that support the intended calculations (e.g., numeric or logical types).

 When performing an operation where only one operand is a table, the other operand must be either a numeric or logical array.

 For operations involving two tables, they must have compatible sizes (i.e., the same number of rows and columns or the operation must make sense for the structures involved).

 The matrix operators #strong[\*];, #strong[\/]; and #strong[\\]; perform element-wise multiplication and division (like #strong[.\*];, #strong[.\/]; and #strong[.\\];) when one operand is a table or timetable and the other operand is a scalar. Any other combination is an error: use the element-wise operators instead.

 The unary operators #strong[-]; and #strong[+]; apply to every variable of a table or timetable.

 

 Below is an example that demonstrates how to perform calculations without explicitly indexing into the table.


== Example

Direct computation on Tables

``````matlab
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

``````


== See also

#nlink(<elementary_functions:2_elementary_math.abs>)[abs];, #nlink(<trigonometric_functions:acos>)[acos];, #nlink(<trigonometric_functions:acosh>)[acosh];, #nlink(<trigonometric_functions:acot>)[acot];, #nlink(<trigonometric_functions:acotd>)[acotd];, #nlink(<trigonometric_functions:acoth>)[acoth];, #nlink(<trigonometric_functions:acsc>)[acsc];, #nlink(<trigonometric_functions:acscd>)[acscd];, #nlink(<trigonometric_functions:acsch>)[acsch];, #nlink(<trigonometric_functions:asec>)[asec];, #nlink(<trigonometric_functions:asecd>)[asecd];, #nlink(<trigonometric_functions:asech>)[asech];, #nlink(<trigonometric_functions:asin>)[asin];, #nlink(<trigonometric_functions:asind>)[asind];, #nlink(<trigonometric_functions:asinh>)[asinh];, #nlink(<trigonometric_functions:atan>)[atan];, #nlink(<trigonometric_functions:atand>)[atand];, #nlink(<trigonometric_functions:atanh>)[atanh];, #nlink(<elementary_functions:2_elementary_math.ceil>)[ceil];, #nlink(<trigonometric_functions:cosd>)[cosd];, #nlink(<trigonometric_functions:cosh>)[cosh];, #nlink(<trigonometric_functions:cospi>)[cospi];, #nlink(<trigonometric_functions:cot>)[cot];, #nlink(<trigonometric_functions:cotd>)[cotd];, #nlink(<trigonometric_functions:coth>)[coth];, #nlink(<trigonometric_functions:csc>)[csc];, #nlink(<trigonometric_functions:cscd>)[cscd];, #nlink(<trigonometric_functions:csch>)[csch];, #nlink(<elementary_functions:2_elementary_math.exp>)[exp];, #nlink(<elementary_functions:2_elementary_math.fix>)[fix];, #nlink(<elementary_functions:2_elementary_math.floor>)[floor];, #nlink(<elementary_functions:2_elementary_math.log>)[log];, #nlink(<elementary_functions:2_elementary_math.log10>)[log10];, #nlink(<elementary_functions:2_elementary_math.log1p>)[log1p];, #nlink(<elementary_functions:2_elementary_math.log2>)[log2];, #nlink(<elementary_functions:2_elementary_math.nextpow2>)[nextpow2];, #nlink(<elementary_functions:2_elementary_math.round>)[round];, #nlink(<trigonometric_functions:sec>)[sec];, #nlink(<trigonometric_functions:secd>)[secd];, #nlink(<trigonometric_functions:sech>)[sech];, #nlink(<trigonometric_functions:sin>)[sin];, #nlink(<trigonometric_functions:sind>)[sind];, #nlink(<trigonometric_functions:sinh>)[sinh];, #nlink(<trigonometric_functions:sinpi>)[sinpi];, #nlink(<elementary_functions:2_elementary_math.sqrt>)[sqrt];, #nlink(<trigonometric_functions:tan>)[tan];, #nlink(<trigonometric_functions:tand>)[tand];, #nlink(<trigonometric_functions:tanh>)[tanh];, #nlink(<statistics:1_descriptive_statistics_visualization.var>)[var];, #nlink(<trigonometric_functions:acosd>)[acosd];, #nlink(<operators:not>)[not];, #nlink(<operators:plus>)[plus];, #nlink(<operators:minus>)[minus];, #nlink(<operators:times>)[times];, #nlink(<operators:eq>)[eq];, #nlink(<operators:ge>)[ge];, #nlink(<operators:gt>)[gt];, #nlink(<operators:le>)[le];, #nlink(<operators:ne>)[ne];, #nlink(<operators:lt>)[lt];, #nlink(<operators:mrdivide>)[mrdivide];, #nlink(<elementary_functions:2_elementary_math.rem>)[rem];, #nlink(<operators:power>)[power];, #nlink(<elementary_functions:2_elementary_math.pow2>)[pow2];, #nlink(<operators:or>)[or];, #nlink(<elementary_functions:2_elementary_math.mod>)[mod];, #nlink(<operators:ldivide>)[ldivide];, #nlink(<operators:mtimes>)[mtimes];, #nlink(<operators:mldivide>)[mldivide];, #nlink(<operators:uminus>)[uminus];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.9.0], [initial version],
  [2.0.0], [mtimes (\*), mrdivide (\/) and mldivide (\\) perform element-wise operations between a table or timetable and a scalar.],
)

// Author: Allan CORNET
