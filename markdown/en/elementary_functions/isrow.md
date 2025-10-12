# isrow

Determine whether input is row vector.

## Syntax

- tf = isrow(V)

## Input argument

- V - a variable

## Output argument

- tf - logical: result of 'isrow'.

## Description

<p>
            isrow(V) returns logical true if size(V) returns [1, n] with a nonnegative integer value n, and logical false otherwise.</p>

## Example

```matlab
isrow([1:4])
isrow([1:4]')
```

## See also

[iscolumn](../elementary_functions/iscolumn.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
