# eq

equality, == operator.

## Syntax

- C = eq(A, B)
- C = (A == B)

## Input argument

- A - a variable
- B - a variable

## Output argument

- C - result of A == B

## Description

<p>
            C = eq(A, B) returns a logical array with elements set to logical true where arrays A and B are equals.</p>

<p></p>

<p>
                eq compares both real and imaginary parts of numeric arrays.</p>

## Examples

```matlab
eye(2,2) == ones(2, 2)
```

```matlab
0 == i
```

```matlab
'Nelson' == 'Noslen'
```

```matlab
"Nelson" == "Noslen"
```

```matlab
'Nelson' == 'l'
```

```matlab
eq(0.8-0.6-0.2, 0)
```

## See also

[ne](../operators/ne.md), [lt](../operators/lt.md), [le](../operators/le.md), [gt](../operators/gt.md), [ge](../operators/ge.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
