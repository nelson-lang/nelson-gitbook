

# isvector

Checks input is vector.

## Syntax

- tf = isvector(M)

## Input argument

 - M - a variable

## Output argument

 - tf - logical: result of 'isvector'.

## Description


  <p><b>isvector</b> returns an scalar logical if entry is an vector.</p>


## Example

```matlab
A = eye(3, 3);
R = isvector(A)
R = isvector(A(:,1))
```

## See also

[isempty](isempty.html).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



