#import "../nelson_help.typ": *

= join <string:6_join_split_extract.join>

Combine strings.

== Syntax

- #raw("res = join(str)");
- #raw("res = join(str, delimiter)");
- #raw("res = join(str, dim)");
- #raw("res = join(str, delimiter, dim)");

== Input argument

/ str: a string, string array or cell of strings.
/ delimiter: a string, string array or cell of strings:Characters used to separate and join strings.
/ dim: positive integer: Dimension along which to join strings.

== Output argument

/ res: a string, string array or cell of strings.

== Description

#strong[res \= join(str)]; combines the elements of #strong[str]; into a single text by joining them with a space character as the default delimiter.

 The input,#strong[str];, can be either a string array or a cell array of character vectors. The output,#strong[res];, has the same data type as #strong[str];.

 If #strong[str]; is a 1-by-N or N-by-1 string array or cell array,#strong[res]; will be a string scalar or a cell array containing a single character vector.

 If #strong[str]; is an M-by-N string array or cell array, res will be an M-by-1 string array or cell array.

 For arrays of any size, join concatenates elements along the last dimension with a size greater than 1.

 #strong[res \= join(str, delimiter)]; joins the elements of #strong[str]; using the specified delimiter instead of the default space character.

 If delimiter is an array of multiple delimiters, and#strong[str]; has N elements along the joining dimension, delimiter must have N–1 elements along the same dimension. All other dimensions of delimiter must either have size 1 or match the size of the corresponding dimensions of #strong[str];.

 #strong[res \= join(str, dim)]; combines the elements of #strong[str]; along the specified dimension #strong[dim];.

 #strong[res \= join(str, delimiter, dim)]; joins the elements of #strong[str]; along the specified dimension#strong[dim];, using delimiter to separate them.


== Example

``````matlab
str = ["x","y","z"; "a","b","c"];
delimiters = [" + "," = "; " - "," = "];
R = join(str, delimiters)
``````


== See also

#nlink(<string:1_create_convert_text.append>)[append];, #nlink(<string:1_create_convert_text.strcat>)[strcat];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.10.0], [initial version],
)

// Author: Allan CORNET
