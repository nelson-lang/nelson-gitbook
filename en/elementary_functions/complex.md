

# complex

Creates an complex number.

## Syntax

- cpx = complex(a)
- cpx = complex(a, b)

## Input argument

 - a - a variable: real part
 - b - a variable: imaginary part

## Output argument

 - cplx - result of a + b*i

## Description


  <p><b>complex</b> returns a complex value from real arguments.</p>
  <p>With only one input argument, <b>complex</b> returns a complex value a + 0*i.</p>


## Example

```Nelson
z = complex(3, 2)
z2 = complex(Inf, Inf)
z3 = Inf + Inf * i
```

## See also

[real](real.md), [imag](imag.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



