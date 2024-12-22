# gram

Controllability and observability Gramians.

## Syntax

- wc = gram(sys, 'o')
- wc = gram(sys, 'c')

## Input argument

- sys - state-space model.

## Output argument

- wc - observability or controllability Gramian.

## Description

## Example

```matlab
sys = ss([-.1 -1;1 0], [1;0], [0 1], 0);
wc = gram(sys, 'c')
wc = gram(sys, 'o')
```

## See also

[lyap](lyap.md), [dlyap](dlyap.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
