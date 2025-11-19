# spy

Visualize sparsity pattern of matrix.

## 📝 Syntax

- spy(S)
- spy(S, LineSpec)
- spy(S, LineSpec, MarkerSize)

## 📥 Input argument

- S - matrix: sparse or dense.
- LineSpec - Line style, marker, and/or color: character vector or scalar string.
- MarkerSize - positive integer scalar value.

## 📄 Description

<b>spy(S)</b> plots the sparsity pattern of the sparse matrix<b>S</b>.

## 💡 Examples

```matlab
f = figure();
rng('default');
S = sparse((rand(1, 10) + 1) * 100, (rand(1, 10) + 1) * 100 , (rand(1, 10) + 1) * 10);
spy(S);
```

<img src="spy_1.svg" align="middle"/>

```matlab
f = figure();
rng('default');
S = sparse((rand(1, 10) + 1) * 100, (rand(1, 10) + 1) * 100 , (rand(1, 10) + 1) * 100);
spy(S, 45);
```

<img src="spy_2.svg" align="middle"/>

```matlab
f = figure();
spy();
```

<img src="spy_3.svg" align="middle"/>

## 🔗 See also

[sparse](../sparse/sparse.md), [plot](../graphics/plot.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
