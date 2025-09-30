# ndgrid

Rectangular grid in N-D space

## Syntax

- [X1, X2, ..., Xn] = ndgrid(x1, x2, ... , xn)
- [X1, X2, ..., Xn] = ndgrid(xg)

## Input argument

- x1, x2, … , xn - vector: grid vectors as separate arguments.
- xg - vector: grid vector for all dimensions.

## Output argument

- X1, X2, … , Xn - array: full grid representation.

## Description

<p>
            <b>[X1, X2, … , Xn] = ndgrid(x1, x2, … , xn)</b> generates an n-dimensional full grid by replicating each grid vector.</p>
<p>
                <b>[X1, X2, … , Xn] = ndgrid(xg)</b> In this scenario, the single grid vector <b>xg</b> is used for all dimensions. The number of output arguments determines the dimensionality 
n of the resulting grid.</p>

## Examples

```matlab
M = {'apple', 'banana', 'cherry'};
N = {'blue', 'green', 'red'};
ndgrid(M , N)

```

```matlab
[X, Y] = ndgrid(1:2:19, 2:2:12)
```

## See also

[meshgrid](../elementary_functions/meshgrid.md), [mesh](../graphics/mesh.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.6.0   | initial version |

## Author

Allan CORNET
