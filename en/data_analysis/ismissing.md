

# ismissing

Check for missing values.

## Syntax

- tf = ismissing(M)

## Input argument

 - M - a variable

## Output argument

 - tf - logical: result of 'ismissing'.

## Description


  <p><b>ismissing</b> returns a logical array which is true where elements of M are <b>missing</b> values.</p>
  <p>missing data are defined as:</p>
  <p><b>NaN</b> for double or single</p>
  <p><b>missing</b> for string array</p>
  <p><b>' '</b> for character array</p>
  <p><b>''</b> for cell of character array</p>


## Example

```matlab
A = ["Nel", NaN, "son"];
ismissing(A)
B = [1 2 NaN Inf];
ismissing(B)
C = 'Nel son'
ismissing(C)
D = {'Nel' '' 'son'}
ismissing(D)
```

## See also

[isfinite](isfinite.html).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



