# ldivide

Left division, .\ operator.

## Syntax

- C = ldivide(A, B)
- C = A .\ B

## Input argument

- A - a variable
- B - a variable

## Output argument

- C - result of A .\ B

## Description

<p>
            <b>C = ldivide(A, B)</b> returns the element-by-element left division of A and B.</p>

## Examples

```matlab
B = ones(3, 4)
A = B *2
A .\ B
```

```matlab
B = 2
A = B *2
A .\ B
```

## See also

[rdivide](../operators/rdivide.md), [mldivide](../operators/mldivide.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
