# le

less than or equal, = operator.

## Syntax

- C = le(A, B)

## Input argument

- A - a variable
- B - a variable

## Output argument

- C - result of le(A, B)

## Description

<p>
            <b>C = le(A, B)</b> returns a logical array with elements set to logical <b>true</b> A is less than or equal to B.</p>
<p>
                <b>le</b> compares only the real part of numeric arrays.</p>
<p></p>

## Examples

```matlab
eye(2,2) &#60;= ones(2, 2)
```

```matlab
0 &#60;= i
```

```matlab
'Nelson' &#60;= 'Noslen'
```

```matlab
'Nelson' &#60;= 'l'
```

```matlab
le(0.8 - 0.6 - 0.2, 0)
```

## See also

[ne](../operators/ne.md), [lt](../operators/lt.md), [ge](../operators/ge.md), [gt](../operators/gt.md), [eq](../operators/eq.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
