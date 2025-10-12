# nthroot

The real 𝑛th root of real number.

## Syntax

- Y = nthroot(X, N)

## Input argument

- X - Input array: scalar, vector, matrix or multidimensional array.
- N - Roots to calculate: scalar or array of same size as X.

## Output argument

- Y - result of 'nthroot'.

## Description

<p>
            𝑌 = nthroot(𝑋, 𝑁) returns the real 𝑛th root of the elements of 𝑋.</p>

<p>Both 𝑋 and 𝑁 must be real scalars or arrays of the same size. If an element in 𝑋 is negative, the corresponding element in 𝑁 must be an odd integer.</p>

<p>When computing roots where both real and complex roots exist, the power function efficiently computes only the complex roots.</p>

<p>To obtain the real root in such cases, use the nthroot function instead.</p>

## Example

```matlab
X = [-2 -3 -2; 4 -2 -5]
N = [1 -1 3; 1/2 5 3]
Y = nthroot(X, N)
```

## See also

[power](../operators/power.md), [sqrt](../elementary_functions/sqrt.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.6.0   | initial version |

## Author

Allan CORNET
