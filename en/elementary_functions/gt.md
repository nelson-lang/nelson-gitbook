

# gt

greater than, > operator.

## Syntax

- C = gt(A, B)
- C = (A > B)

## Input argument

 - A - a variable
 - B - a variable

## Output argument

 - C - result of A > B

## Description


  <p><b>C = gt(A, B)</b> returns a logical array with elements set to logical <b>true</b> A is greater than B.</p>
  <p/>


## Examples

```matlab
eye(2,2) > ones(2, 2)
```
```matlab
0 > i
```
```matlab
'Nelson' > 'Noslen'
```
```matlab
'Nelson' > 'l'
```
```matlab
gt(0.8 - 0.6 - 0.2, 0)
```

## See also

[ne](ne.md), [lt](lt.md), [le](le.md), [ge](ge.md), [eq](eq.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



