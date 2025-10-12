# ismissing

Check for missing values.

## Syntax

- tf = ismissing(M)

## Input argument

- M - a variable

## Output argument

- tf - logical: result of 'ismissing'.

## Description

<p>
            ismissing returns a logical array which is true where elements of M are missing values.</p>

<p>missing data are defined as:</p>

<p>
                NaN for double or single</p>

<p>
                    missing for string array</p>

<p>
                        ' ' for character array</p>

<p>
                            '' for cell of character array</p>

## Example

```matlab
A = ["Nel", NaN, "son"];
ismissing(A)
B = [1 2 NaN Inf];
ismissing(B)
C = 'Nel son'
ismissing(C)
D = {'Nel' '' 'son'}
ismissing(D)

```

## See also

[isfinite](../data_analysis/isfinite.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
