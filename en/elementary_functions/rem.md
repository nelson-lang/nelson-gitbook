

# rem

Remainder after division.

## Syntax

- C = rem(A, B)

## Input argument

 - A - a variable: dividend
 - B - a variable: divisor

## Output argument

 - C - result of rem(A, B)

## Description


  <p><b>C = rem(A, B)</b> computes the remainder of A and B, i.e : A - fix(A ./ B) .* B.</p>
  <p>This function manages also negative values.</p>
  <p>mod(A, 0) = A , whereas rem(A, 0) = NaN.</p>
  <p>mod(A, B) has the sign of B, while rem(A, B) has the sign of A.</p>
  <p>mod and rem are equals if A and B have the same sign.</p>


## Example

```matlab
rem (-1, 3)
mod(-1, 3)
```

## See also

[mod](rem.md), [floor](floor.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



