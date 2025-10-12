# iscolumn

Determine whether input is column vector.

## Syntax

- tf = iscolumn(V)

## Input argument

- V - a variable

## Output argument

- tf - logical: result of 'iscolumn'.

## Description

<p>
            iscolumn(V) returns logical true if size(V) returns [n, 1] with a nonnegative integer value n, and logical false otherwise.</p>

## Example

```matlab
iscolumn([1:4])
iscolumn([1:4]')
```

## See also

[isrow](../elementary_functions/isrow.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
