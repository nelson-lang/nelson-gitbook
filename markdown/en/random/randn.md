# randn

Normally distributed random number.

## Syntax

- M = randn
- M = randn(n)
- M = randn(x1, x2, ... , xN)
- M = randn(sz)
- M = randn(x1, x2, ... , xN, classname)
- M = randn(x1, x2, ... , xN, 'like', var)

## Input argument

- n - a variable: n-by-n matrix will be generated.
- x1, x2, ... , xN - x1-by-...-by-xN values
- classname - a string: 'single' or 'double'
- var - a variable: single or double

## Output argument

- M - a matrix of random numbers.

## Description

<p>
            randn returns a matrix with normally distributed random elements having zero mean and variance one.</p>

<p>By default, randn uses the ziggurat algorithm.</p>

<p>seed can be modified using rng.</p>

## Examples

```matlab
rng('default');
randn
rng('default');
randn

```

```matlab
rng('default');
randn(6)

```

```matlab
rng('default');
randn(3, 2, 3)

```

```matlab
rng('default');
randn(3, 2, 'single')

```

```matlab
rng('default');
v = single([3, 3]);
randn(3, 2, 'like', v)

```

## See also

[rng](../random/rng.md), [randn](../random/randn.md), [eye](../constructors_functions/eye.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |
| 1.15.0  | Algo reworked   |

## Author

Allan CORNET
