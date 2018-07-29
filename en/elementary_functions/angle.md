

# angle

Phase angle

## Syntax

- R = angle(Z)

## Input argument

 - Z - a variable (double, single, complex)

## Output argument

 - R - result of angle function.

## Description


  <p><b>angle</b> computes the phase angle, equivalent to <b>atan2(imag(Z), real(Z))</b>.</p>


## Example

```matlab
x = [1+i,-i;i,2i];
r = angle(x)
```

## See also

[atan2](../trigonometric_functions/atan2.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



