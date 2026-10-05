#import "../nelson_help.typ": *

= str2double <string:1_create_convert_text.str2double>

Converts a string to double.

== Syntax

- #raw("res = str2double(str)");

== Input argument

/ str: a cell of strings, string array or a string.

== Output argument

/ res: a double

== Description

#strong[str2double]; converts any complex number as a whole into a complex numeric field, converting the real and imaginary parts to the specified numeric type.

 If #strong[str2double]; cannot convert string to a number, then it returns a Not An Number value.

 Signed exponents require an e or d marker: '1e+2' and '1d+2' produce 100, while '1+2' and '1-2' are invalid and produce NaN. Input text is not evaluated as an arithmetic expression. Complex values such as '1+2i' remain supported.


== Example

``````matlab
R = str2double('2.6 + 3j')
R = str2double('+NaNi')
R = str2double({'2.71' '3.1415'})
R = str2double(["2.71" "3.1415"])

``````


== See also

#nlink(<double:double>)[double];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
