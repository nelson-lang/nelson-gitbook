# unique

Unique values.

## Syntax

- C = unique(A)
- C = unique(A, 'rows')
- [C, ia, ic] = unique(...)

## Input argument

- A - an nelson's variable (double, single, int8, int16, int32, int64, uint8, uint16, uint32, uint64, logical, char, string, cell).

## Output argument

- C - Unique data of A.
- ia - Index to A: column vector.
- ic - Index to C: column vector.

## Description

  <p><b>C = unique(A)</b> returns the unique elements of array <b>A</b> in sorted order.</p>
  <p><b>C = unique(A, 'rows')</b> considers each row of <b>A</b> as a unique entity and returns the unique rows in sorted order.</p>
  <p>Note that the 'rows' option does not support cell arrays.</p>
  <p><b>[C, ia, ic] = unique(...)</b> extends any of the previous syntaxes to also return index vectors <b>ia</b> and <b>ic</b>.</p>
  <p>For a vector <b>A</b>, the relationships are <b>C = A(ia)</b> and <b>A = C(ic)</b>.</p>
  <p>For a matrix or array <b>A</b>, the relationships are <b>C = A(ia)</b> and <b>A(:) = C(ic)</b>.</p>
  <p>If the 'rows' option is used, the relationships are <b>C = A(ia, :)</b> and <b>A = C(ic, :)</b>.</p>

Used function(s)

std::sort, std::unique (stl)

## Examples

```matlab
A = [10+20i 30+i 10i 0 -10i];
[C, ia, ic] = unique(A)
```

```matlab
A = {'hi', 'good'; 'good', 'tell'; 'hi', 'bye'}
[C, ia, ic] = unique(A)
```

## See also

[sort](sort.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.6.0   | initial version |

## Author

Allan CORNET
