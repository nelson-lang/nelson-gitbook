# lin2mu

Convert audio data from linear singal to mu-law.

## Syntax

- mu = lin2mu(y)

## Input argument

- y - linear signal with -1 ≤ y ≤ 1.

## Output argument

- mu - mu-law encoded 8-bit audio signals, with 0 ≤ mu ≤ 255.

## Description

<p>
            mu = lin2mu(y) converts audio data from linear to mu-law.</p>

## Bibliography

https://en.wikipedia.org/wiki/%CE%9C-law_algorithm

## Example

```matlab
mu = lin2mu([-1:0.5:1])
```

## See also

[audioplayer](../audio/audioplayer.md), [mu2lin](../audio/mu2lin.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
