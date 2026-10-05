#import "nelson_help.typ": *

= missing <types:missing>

Return a missing value.

== Syntax

- #raw("m = missing()");

== Output argument

/ m: a missing value for use in arrays and tables

== Description

#strong[missing]; returns a special value to represent missing (undefined data). When assigned into an array or table, the #strong[missing]; value is automatically converted into the standard missing value used by the array’s data type. An indexed assignment such as #strong[A(k) \= missing]; or #strong[A(:) \= missing]; keeps the class of #strong[A];: #strong[missing]; becomes #strong[NaN]; in a #strong[double]; or #strong[single]; array, #strong[\<missing\>]; in a #strong[string]; array, #strong[NaN]; in a #strong[duration]; array and #strong[NaT]; in a #strong[datetime]; array. Arrays of the other classes (char, logical, integer, cell) have no missing value and the assignment raises an error.

 Concatenation follows the same rules: #strong[\[missing missing\]]; is a 1-by-2 #strong[missing]; array, #strong[\[missing 1\]]; is #strong[\[NaN 1\]];, #strong[\[missing \[\]\]]; is #strong[NaN];, #strong[\[missing "a"\]]; is a string array, and concatenating #strong[missing]; with a char, logical, integer, cell, struct or function handle value raises an error.


== Example

``````matlab

A = missing()
A = double([1, 2, missing()])
B = string(["foo", missing()])
C = struct("Name", "Alice", "Age", missing())
S = strings(1, 3);
S(2:3) = missing
X = [1 2 3];
X(:) = missing
M = [missing missing]

``````


== See also

#nlink(<data_analysis:ismissing>)[ismissing];, #nlink(<types:missing>)[missing];, #nlink(<constructors_functions:NaN>)[NaN];, #nlink(<string:1_create_convert_text.string>)[string];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [initial version],
)

// Author: Allan CORNET
