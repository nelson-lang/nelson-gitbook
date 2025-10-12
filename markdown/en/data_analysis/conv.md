# conv

Convolution and polynomial multiplication.

## Syntax

- C = conv(u, v)
- C = conv(u, v, shape)

## Input argument

- u - input vectors, specified as either row or column vectors.
- v - input vectors, specified as either row or column vectors.
- shape - subsection of convolution: 'full' (default: full 2-D convolution), 'same' (central part of the convolution) or 'valid' (parts of the convolution that are computed without zero-padded edges).

## Output argument

- C - convolution, returned as a vector or matrix.

## Description

<p>
            conv returns the convolution of vectors u and v.</p>

## Example

```matlab
U = [-1 2 3 -2 0 1 2];
V = [2 4 -1 1];
R = conv(U, V, 'same')
```

## See also

[conv](../data_analysis/conv.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
