# mag2db

Convert a magnitude to decibels (dB).

## Syntax

- db = mag2db(mag)

## Input argument

- mag - input array: scalar, vector or matrix.

## Output argument

- db - corresponding values in decibels

## Description

<p>
            db = mag2db(mag) converts magnitude values to decibels (dB).
        </p>

<p>The conversion formula is:</p>

$$\text{dB} = 20 \log_{10}(\text{magnitude})$$

<p>This conversion is commonly used in signal processing, acoustics, and electronics to express ratios on a logarithmic scale.</p>

## Example

```matlab
DB = mag2db([1, 0.01])
```

## See also

[db2mag](../signal_processing/db2mag.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
