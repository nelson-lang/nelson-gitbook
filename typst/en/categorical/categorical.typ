#import "nelson_help.typ": *

= categorical <categorical:categorical>

Create a categorical array.

== Syntax

- #raw("C = categorical(A)");
- #raw("C = categorical(A, valueset)");
- #raw("C = categorical(A, valueset, categoryNames)");
- #raw("C = categorical(..., 'Ordinal', tf)");
- #raw("C = categorical(..., 'Protected', tf)");

== Input argument

/ A: Input values. Text, string, numeric, logical, or categorical input is accepted.
/ valueset: Explicit set of input values that define categories.
/ categoryNames: Names assigned to the categories defined by #strong[valueset];.
/ tf: Logical scalar that enables ordinal ordering or category protection.

== Output argument

/ C: Categorical array with the same size as #strong[A];.

== Description

#strong[categorical]; stores repeated values as integer category codes plus a category name list.

 Values that are empty text, missing strings, or not found in an explicit #strong[valueset]; become undefined categorical elements.

 Ordinal arrays use category order for relational comparisons. Ordinal arrays are protected automatically.

 #strong[contains];, #strong[startsWith];, #strong[endsWith]; and #strong[matches]; accept a categorical array as input: they test the category name of each element against the pattern (text, cell of text, string array or pattern object, with the optional #strong['IgnoreCase']; option) and return a logical array of the same size. Undefined elements return false. Each category name is tested only once.

 Concatenating a categorical array with text (#strong[\["z" C\]];, #strong[\['z' C\]];, #strong[\[{'z'} C\]];) or #strong[missing]; converts the other operands: the result keeps the categories of the first categorical operand and adds new values in operand order; empty text and #strong[missing]; are undefined. Ordinal and protected arrays reject values that are not already categories, and other classes (numeric, logical, string arrays with several elements) are rejected.


== Examples

Create categories from text values.

``````matlab
C = categorical({'red','blue','red'}); categories(C)
``````

Create an ordinal categorical array with explicit category order.

``````matlab
C = categorical({'low','high','mid'}, {'low','mid','high'}, 'Ordinal', true); C > 'mid'
``````

Find elements whose category name matches a pattern.

``````matlab
C = categorical({'winter storm','fire','Thunder Storm',''}); contains(C, "storm", 'IgnoreCase', true)
``````


== See also

#nlink(<categorical:categories>)[categories];, #nlink(<categorical:iscategorical>)[iscategorical];, #nlink(<categorical:isundefined>)[isundefined];, #nlink(<categorical:isordinal>)[isordinal];, #nlink(<categorical:isprotected>)[isprotected];, #nlink(<string:3_find_replace.contains>)[contains];, #nlink(<string:3_find_replace.startsWith>)[startsWith];, #nlink(<string:3_find_replace.endsWith>)[endsWith];, #nlink(<string:8_compare_text.matches>)[matches];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
