# mldivide

Matrix left division, \ operator.

## Syntax

- C = mldivide(A, B)
- C = A \ B

## Input argument

- A - a variable
- B - a variable

## Output argument

- C - result of A \ B

## Description

<p>
            <b>C = mldivide(A, B)</b> returns the matrix left division of A and B.</p>

## Example

```matlab
B = ones(3, 4)
A = B *2
A \ B
```

## See also

[ldivide](../operators/ldivide.md), [mrdivide](../operators/mrdivide.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
