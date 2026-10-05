#import "nelson_help.typ": *

= csvread <spreadsheet:csvread>

Read comma-separated value (CSV) file.

== Syntax

- #raw("M = csvread(filename)");
- #raw("M = csvread(filename, R1, C1)");
- #raw("M = csvread(filename, R1, C1, [R1 C1 R2 C2])");

== Input argument

/ filename: a string: filename source.
/ R1, C1: nonnegative integer: offset. default : 0, 0
/ \[R1 C1 R2 C2\]: nonnegative integer: Starting row offset, starting column offset, ending row offset and ending column offset.

== Output argument

/ M: a double matrix.

== Description

#strong[M \= csvread(filename, R1, C1, \[R1 C1 R2 C2\])]; reads only the data within the range specified by row offsets#strong[R1]; to #strong[R2]; and column offsets #strong[C1]; to #strong[C2];.

 #strong[M \= csvread(filename, R1, C1)]; starts reading data at the row and column offsets specified by#strong[R1]; and#strong[C1];. For example, R1\=0, C1\=0 indicates the first value in the file.

 To set row and column offsets without defining a delimiter, use an empty character as a placeholder, like #strong[M \= csvread(filename, 3, 1)];.

 #strong[M \= csvread(filename)]; read a comma-separated value (CSV) formatted file into matrix#strong[M];.

 Complex Number Importing:#strong[csvread]; reads each complex number as a single unit, storing it in a complex numeric field.

 Valid forms for complex numbers are:

 

 

#table(
  columns: 2,
  [Form:], [Example:], 
  [± real ± imag i|j], [3.1347-2.1i], 
  [± imag i|j], [-2.1j], 
)
 #strong[Note];: Whitespace within a complex number is not allowed;#strong[csvread]; interprets any embedded spaces as field delimiters.


== Example

``````matlab
A = [Inf, -Inf, NaN, 3]; filename = [tempdir(), 'csvread_example.csv']; csvwrite(filename, A); R = csvread(filename)
``````


== See also

#nlink(<spreadsheet:csvwrite>)[csvwrite];, #nlink(<spreadsheet:dlmread>)[dlmread];, #nlink(<stream_manager:fileread>)[fileread];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.10.0], [initial version],
)

// Author: Allan CORNET
