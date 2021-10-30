

# polyfit

Polynomial curve fitting.

## Syntax

- p = polyfit(x, y, n)

## Input argument

 - x - vector: query points
 - y - vector: fitted values at query points
 - n - positive scalar: degree of polynomial fit

## Output argument

 - p - vector: Least-squares fit polynomial coefficients

## Description


  <p><b>p = polyfit(x, y, n)</b> returns the coefficients for a polynomial <b>p(x)</b> of degree <b>n</b> that is a best fit for the data in <b>y</b>.</p>


## Example

```matlab
x = linspace(0, 8 * pi, 15);
y = sin(x);
p = polyfit(x, y, 7)
```

## See also

[roots](roots.md), [poly](poly.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



