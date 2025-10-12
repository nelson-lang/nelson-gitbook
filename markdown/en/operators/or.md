# or

logical 'OR' operator, |

## Syntax

- C = or(A, B)
- C = A | B

## Input argument

- A - a variable
- B - a variable

## Output argument

- C - result of A | B

## Description

<p>
            C = or(A, B) performs a logical OR operation.</p>

## Example

```matlab
A = [6 8 0; 0 3 89; 15 0 0]
B = [66 56 0; 11 33 55; -11 0 0]
C = A | B
D = or(B, A)
C == D
```

## See also

[and](../operators/and.md), [xor](../operators/xor.md), [all](../operators/all.md), [any](../operators/any.md), [not](../operators/not.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
