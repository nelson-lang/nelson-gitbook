# sprand

Sparse uniformly distributed random matrix.

## Syntax

- R = sprand(S)
- R = sprand(m,n,density)

## Input argument

- S - Input matrix
- m - Number of rows
- density - Density of the non-zero elements

## Output argument

- S - a sparse matrix.

## Description

<p>
            R = sprand(S) creates a sparse matrix that has the same sparsity pattern as the matrix S, but with uniformly distributed random entries.</p>

<p>
                R = sprand(m,n,density) creates a random m-by-n sparse matrix with approximately density*m*n uniformly distributed nonzero entries for density in the interval [0,1].</p>

## Examples

sprand with matrix pattern

```matlab
S = [1 0 0; 0 1 0; 0 0 1]; R = sprand(S)
```

sprand with size and density

```matlab
R = sprand(5, 5, 0.2)
```

## See also

[sprandn](../sparse/sprandn.md), [rng](../random/rng.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.15.0  | initial version |

## Author

Allan CORNET
