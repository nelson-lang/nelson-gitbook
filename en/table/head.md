# head

Get top rows of table or array.

## Syntax

- head(A)
- head(A, k)
- B = head(...)

## Input argument

- A - Input array (table or other).

## Output argument

- k - a integer value: Number of rows to extract (k = 8 by default).

## Description

  <p><b>head(A)</b> displays the first eight rows of an array, or table <b>A</b> in the Command Window without assigning it to a variable.</p>
  <p><b>head(A, k)</b> displays the first k rows of A.</p>
  <p><b>B = head(...)</b> returns the specified rows of <b>A</b> for any of the previous syntaxes, with <b>B</b> having the same data type as <b>A</b>.</p>

## Examples

```matlab
LastName = {'Sanchez';'Johnson';'Li';'Diaz';'Brown'};
Age = [38;43;38;40;49];
Smoker = logical([1;0;1;0;1]);
Height = [71;69;64;67;64];
Weight = [176;163;131;133;119];
BloodPressure = [124 93; 109 77; 125 83; 117 75; 122 80];
T = table(LastName, Age, Smoker, Height, Weight, BloodPressure)
head(T, 2)
```

```matlab
A = repmat((1:50)',1, 3);
head(A)
```

## See also

[tail](tail.md), [table](table.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.9.0   | initial version |

## Author

Allan CORNET
