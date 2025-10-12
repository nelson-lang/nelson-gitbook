# sinc

Sinc function.

## Syntax

- c = sinc(m)

## Input argument

- m - input array: scalar, vector or matrix.

## Output argument

- c - sinc of input

## Description

<p>
            c = sinc(m) returns an array c whose elements are the sinc of the elements of the input: m.
        </p>

<p>The sinc function (normalized) is defined as:</p>

$$\text{sinc}(x) = \begin{cases} \frac{\sin(\pi x)}{\pi x} & \text{if } x \neq 0 \\ 1 & \text{if } x = 0 \end{cases}$$

<p>The sinc function is the Fourier transform of the rectangular pulse function and appears frequently in signal processing and communications.</p>

## Example

```matlab
c = sinc(pi)
```

## See also

[sin](../trigonometric_functions/sin.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
