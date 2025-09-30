# tail

Get bottom rows of table or array.

## Syntax

- tail(A)
- tail(A, k)
- B = tail(...)

## Input argument

- A - Input array (table or other).

## Output argument

- k - a integer value: Number of rows to extract (k = 8 by default).

## Description

<p>
            <b>tail(A)</b> displays the last eight rows of an array, or table <b>A</b> in the Command Window without assigning it to a variable.</p>
<p>
                <b>tail(A, k)</b> displays the last k rows of A.</p>
<p>
                    <b>B = tail(...)</b> returns the specified rows of <b>A</b> for any of the previous syntaxes, with <b>B</b> having the same data type as <b>A</b>.</p>

## Examples

```matlab
LastName = {'Sanchez';'Johnson';'Li';'Diaz';'Brown'};
Age = [38;43;38;40;49];
Smoker = logical([1;0;1;0;1]);
Height = [71;69;64;67;64];
Weight = [176;163;131;133;119];
BloodPressure = [124 93; 109 77; 125 83; 117 75; 122 80];
T = table(LastName, Age, Smoker, Height, Weight, BloodPressure)
tail(T, 2)
```

```matlab
A = repmat((1:50)',1, 3);
tail(A)
```

## See also

[head](../table/head.md), [table](../table/table.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.9.0   | initial version |

## Author

Allan CORNET
