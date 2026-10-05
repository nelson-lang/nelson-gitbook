# unique

Unique values.

## 📝 Syntax

- C = unique(A)
- C = unique(A, 'rows')
- C = unique(A, 'stable')
- C = unique(A, 'first')
- C = unique(A, 'last')
- C = unique(A, 'legacy')
- C = unique(A, 'rows', 'legacy')
- C = unique(..., 'TreatMissingAsDistinct', tf)
- [C, ia, ic] = unique(...)

## 📥 Input argument

- A - an nelson's variable (double, single, int8, int16, int32, int64, uint8, uint16, uint32, uint64, logical, char, string, cell).
- tf - Missing values handling: true (default) each missing value (NaN, <missing>, <undefined>) is distinct, false repeated missing values are duplicates.

## 📤 Output argument

- C - Unique data of A.
- ia - Index to A: column vector.
- ic - Index to C: column vector.

## 📄 Description


<b>C = unique(A)</b> returns the unique elements of array <b>A</b> in sorted order. 

<b>C = unique(A, 'rows')</b> considers each row of <b>A</b> as a unique entity and returns the unique rows in sorted order. 

Note that the 'rows' option does not support cell arrays. 

<b>C = unique(A, 'stable')</b> returns unique values in first-occurrence order. 

<b>C = unique(A, 'first')</b> (default) or <b>C = unique(A, 'last')</b> selects, respectively, the first or the last occurrence of each repeated value for the index <b>ia</b>. 

<b>C = unique(A, 'legacy')</b> preserves the behavior of <b>unique</b> from releases prior to R2013a. Values are returned in sorted order, <b>ia</b> points at the <b>last</b> occurrence of each repeated value, and, unless the 'rows' option is used, the index vectors <b>ia</b> and <b>ic</b> follow the orientation of a vector <b>A</b> (row vectors for a row-vector input). The 'legacy' flag cannot be combined with 'sorted', 'stable', 'first' or 'last'. 

<b>C = unique(..., 'TreatMissingAsDistinct', false)</b> treats each repeated missing value as a duplicate: at most one missing value is included in <b>C</b>. By default (true), each missing value of <b>A</b> is included in <b>C</b>. With 'rows', rows are duplicates when they have missing values in the same columns and equal nonmissing values in the other columns. This option applies to numeric, string, categorical and table inputs and cannot be combined with 'legacy'. 

<b>[C, ia, ic] = unique(...)</b> extends any of the previous syntaxes to also return index vectors <b>ia</b> and <b>ic</b>. 

For a vector <b>A</b>, the relationships are <b>C = A(ia)</b> and <b>A = C(ic)</b>. 

For a matrix or array <b>A</b>, the relationships are <b>C = A(ia)</b> and <b>A(:) = C(ic)</b>. 

If the 'rows' option is used, the relationships are <b>C = A(ia, :)</b> and <b>A = C(ic, :)</b>. 

For a table <b>A</b>, each row is compared across all variables and <b>C</b> is a table: with 'sorted' (default) its rows are ordered as <b>sortrows</b> orders them, with 'stable' in first-occurrence order; <b>C = A(ia, :)</b> and <b>A = C(ic, :)</b>. 'rows' is implied and 'legacy' is not supported.

## Used function(s)

std::sort, std::unique (stl)

## 💡 Examples



```matlab
A = [10+20i 30+i 10i 0 -10i];
[C, ia, ic] = unique(A)

```


```matlab
A = {'hi', 'good'; 'good', 'tell'; 'hi', 'bye'}
[C, ia, ic] = unique(A)

```
Missing values treated as duplicates

```matlab
A = [5 8 NaN NaN];
C1 = unique(A)
C2 = unique(A, 'TreatMissingAsDistinct', false)

```


## 🔗 See also

[sort](../data_analysis/sort.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.6.0   | initial version |
| 2.0.0   | stable option added |
| 2.1.0   | 'first', 'last' and 'legacy' options added |
| 2.0.0   | 'TreatMissingAsDistinct' option added |

<!--
## 👤 Author

Allan CORNET
-->
