# sprandn

Sparse normally distributed random matrix.

## Syntax

- R = sprandn(S)
- R = sprandn(m,n,density)

## Input argument

- S - Input matrix
- m - Number of rows
- density - Density of the non-zero elements

## Output argument

- S - a sparse matrix.

## Description

<p>
            R = sprandn(S) creates a sparse matrix that has the same sparsity pattern as the matrix S, but with normally distributed random entries.</p>

<p>
                R = sprandn(m,n,density) creates a random m-by-n sparse matrix with approximately density*m*n normally distributed nonzero entries for density in the interval [0,1].</p>

## Examples

sprandn with matrix pattern

```matlab
S = [1 0 0; 0 1 0; 0 0 1]; R = sprandn(S)
```

sprandn with size and density

```matlab
R = sprandn(5, 5, 0.2)
```

## See also

[sprand](../sparse/sprand.md), [rng](../random/rng.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.15.0  | initial version |

## Author

Allan CORNET
