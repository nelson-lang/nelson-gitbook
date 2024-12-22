# logspace

logarithmically spaced vector constructor.

## Syntax

- V = logspace(s, e)
- V = logspace(s, e, n)

## Input argument

- s - first value: a scalar, single or double.
- e - last value: a scalar, single or double.
- n - Number of points: a scalar, single or double (by default 100).

## Output argument

- V - result of logspace: an logarithmically spaced vector.

## Description

  <p><b>logspace</b> generates an logarithmically spaced vector.</p>

## Example

```matlab
V = logspace(1+2i, 10+10i, 4)
```

## See also

[linspace](linspace.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
