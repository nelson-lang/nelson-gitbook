



eq


eq

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

```Nelson
eye(2,2) == ones(2, 2)
```
```Nelson
0 == i
```
```Nelson
'Nelson' == 'Noslen'
```
```Nelson
'Nelson' == 'l'
```
```Nelson
eq(0.8-0.6-0.2, 0)
```

## See also

ne.md ne, lt.md lt, le.md le, gt.md gt, ge.md ge.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



