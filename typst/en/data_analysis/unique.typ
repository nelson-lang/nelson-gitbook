#import "nelson_help.typ": *

= unique <data_analysis:unique>

Unique values.

== Syntax

- #raw("C = unique(A)");
- #raw("C = unique(A, 'rows')");
- #raw("C = unique(A, 'stable')");
- #raw("C = unique(A, 'first')");
- #raw("C = unique(A, 'last')");
- #raw("C = unique(A, 'legacy')");
- #raw("C = unique(A, 'rows', 'legacy')");
- #raw("C = unique(..., 'TreatMissingAsDistinct', tf)");
- #raw("[C, ia, ic] = unique(...)");

== Input argument

/ A: an nelson's variable (double, single, int8, int16, int32, int64, uint8, uint16, uint32, uint64, logical, char, string, cell).
/ tf: Missing values handling: true (default) each missing value (NaN, \<missing\>, \<undefined\>) is distinct, false repeated missing values are duplicates.

== Output argument

/ C: Unique data of A.
/ ia: Index to A: column vector.
/ ic: Index to C: column vector.

== Description

#strong[C \= unique(A)]; returns the unique elements of array #strong[A]; in sorted order.

 #strong[C \= unique(A, 'rows')]; considers each row of #strong[A]; as a unique entity and returns the unique rows in sorted order.

 Note that the 'rows' option does not support cell arrays.

 #strong[C \= unique(A, 'stable')]; returns unique values in first-occurrence order.

 #strong[C \= unique(A, 'first')]; (default) or #strong[C \= unique(A, 'last')]; selects, respectively, the first or the last occurrence of each repeated value for the index #strong[ia];.

 #strong[C \= unique(A, 'legacy')]; preserves the behavior of #strong[unique]; from releases prior to R2013a. Values are returned in sorted order, #strong[ia]; points at the #strong[last]; occurrence of each repeated value, and, unless the 'rows' option is used, the index vectors #strong[ia]; and #strong[ic]; follow the orientation of a vector #strong[A]; (row vectors for a row-vector input). The 'legacy' flag cannot be combined with 'sorted', 'stable', 'first' or 'last'.

 #strong[C \= unique(..., 'TreatMissingAsDistinct', false)]; treats each repeated missing value as a duplicate: at most one missing value is included in #strong[C];. By default (true), each missing value of #strong[A]; is included in #strong[C];. With 'rows', rows are duplicates when they have missing values in the same columns and equal nonmissing values in the other columns. This option applies to numeric, string, categorical and table inputs and cannot be combined with 'legacy'.

 #strong[\[C, ia, ic\] \= unique(...)]; extends any of the previous syntaxes to also return index vectors #strong[ia]; and #strong[ic];.

 For a vector #strong[A];, the relationships are #strong[C \= A(ia)]; and #strong[A \= C(ic)];.

 For a matrix or array #strong[A];, the relationships are #strong[C \= A(ia)]; and #strong[A(:) \= C(ic)];.

 If the 'rows' option is used, the relationships are #strong[C \= A(ia, :)]; and #strong[A \= C(ic, :)];.

 For a table #strong[A];, each row is compared across all variables and #strong[C]; is a table: with 'sorted' (default) its rows are ordered as #strong[sortrows]; orders them, with 'stable' in first-occurrence order; #strong[C \= A(ia, :)]; and #strong[A \= C(ic, :)];. 'rows' is implied and 'legacy' is not supported.


== Used function(s)

std::sort, std::unique (stl)

== Examples

``````matlab
A = [10+20i 30+i 10i 0 -10i];
[C, ia, ic] = unique(A)

``````

``````matlab
A = {'hi', 'good'; 'good', 'tell'; 'hi', 'bye'}
[C, ia, ic] = unique(A)

``````

Missing values treated as duplicates

``````matlab
A = [5 8 NaN NaN];
C1 = unique(A)
C2 = unique(A, 'TreatMissingAsDistinct', false)

``````


== See also

#nlink(<data_analysis:sort>)[sort];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.6.0], [initial version],
  [2.0.0], [stable option added],
  [2.1.0], ['first', 'last' and 'legacy' options added],
  [2.0.0], ['TreatMissingAsDistinct' option added],
)

// Author: Allan CORNET
