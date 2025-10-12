# lt

less than, < operator.

## Syntax

- C = lt(A, B)

## Input argument

- A - a variable
- B - a variable

## Output argument

- C - result of lt(A, B)

## Description

<p>
            C = lt(A, B) returns a logical array with elements set to logical true A is less than B.</p>

<p>
                lt compares only the real part of numeric arrays.</p>

<p></p>

## Examples

```matlab
eye(2,2) &#60; ones(2, 2)
```

```matlab
0 &#60; i
```

```matlab
'Nelson' &#60; 'Noslen'
```

```matlab
'Nelson' &#60; 'l'
```

```matlab
lt(0.8 - 0.6 - 0.2, 0)
```

## See also

[ne](../operators/ne.md), [le](../operators/le.md), [ge](../operators/ge.md), [gt](../operators/gt.md), [eq](../operators/eq.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
