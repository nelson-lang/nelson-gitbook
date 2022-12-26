# spy

Visualize sparsity pattern of matrix.

## Syntax

- spy(S)
- spy(S, LineSpec)
- spy(S, LineSpec, MarkerSize)

## Input argument

- S - matrix: sparse or dense.
- LineSpec - Line style, marker, and/or color: character vector or scalar string.
- MarkerSize - positive integer scalar value.

## Description

  <p><b>spy(S)</b> plots the sparsity pattern of the sparse matrix <b>S</b>.</p>

## Examples

```matlab
f = figure();
rng('default');
S = sparse((rand(1, 10) + 1) * 100, (rand(1, 10) + 1) * 100 , (rand(1, 10) + 1) * 10);
spy(S);
```

<img src="spy_1_13CA72EB.svg" align="middle"/>

```matlab
f = figure();
rng('default');
S = sparse((rand(1, 10) + 1) * 100, (rand(1, 10) + 1) * 100 , (rand(1, 10) + 1) * 100);
spy(S, 45);
```

<img src="spy_2_510CE7B2.svg" align="middle"/>

```matlab
f = figure();
spy();
```

<img src="spy_3_D840DFC.svg" align="middle"/>

## See also

[sparse](../sparse/sparse.md), [plot](plot.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
