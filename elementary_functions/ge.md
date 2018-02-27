



ge


ge

greater than or equal, >= operator.

## Syntax

- C = ge(A, B)
- C = (A >= B)

## Input argument

 - A - a variable
 - B - a variable

## Output argument

 - C - result of A >= B

## Description


  <p><b>C = ge(A, B)</b> returns a logical array with elements set to logical <b>true</b> A is greater than or equal to B.</p>
  <p/>


## Examples

```Nelson
eye(2,2) >= ones(2, 2)
```
```Nelson
0 >= i
```
```Nelson
'Nelson' >= 'Noslen'
```
```Nelson
'Nelson' >= 'l'
```
```Nelson
ge(0.8-0.6-0.2, 0)
```

## See also

ne.md ne, lt.md lt, le.md le, gt.md gt, eq.md eq.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



