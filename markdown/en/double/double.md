# double

Converts a variable to double precision type.

## Syntax

- D = double(V)

## Input argument

- V - a variable.

## Output argument

- D - a double.

## Description

<p>
            <b>double(V)</b> converts to the double-precision type.</p>

## Examples

```matlab
double('Nelson')
```

```matlab
A = single(pi)
B = double(A)
B - A
```

```matlab
A = ["3.134", "NaN"; "Inf", "-5"];
B = double(A)
```

## See also

[char](../string/char.md), [single](../single/single.md), [numeric types](../interpreter/numeric_types.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
