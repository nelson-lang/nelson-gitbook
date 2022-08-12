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

  <p><b>C = eq(A, B)</b> returns a logical array with elements set to logical <b>true</b> where arrays A and B are equals.</p>
  <p/>

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

[ne](ne.md), [lt](lt.md), [le](le.md), [gt](gt.md), [ge](ge.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
