# bode

Bode plot of frequency response, magnitude and phase data.

## Syntax

- bode()
- bode(H)
- bode(H, wIn)
- bode(H, w, lineSpec)
- [magnitude, phase, w] = bode(H)
- [magnitude, phase, w] = bode(H, wIn)

## Input argument

- H - a lti model.
- wIn - a cell {wmin, wmax} or a vector [wmin:wmax].
- lineSpec - Line style, marker, and color.

## Output argument

- magnitude - Magnitude: size 1 x 1 x k (SISO).
- phase - Phase: size 1 x 1 x k (SISO).
- w - Frequencies: a vector: 1 x k.

## Description

<p>
            bode(sys) generates a Bode plot illustrating the frequency response of a dynamic system model, denoted as sys.
        </p>

<p>This plot visually represents the system's response in terms of both magnitude (measured in decibels, dB) and phase (measured in degrees) across varying frequencies.</p>

<p>The specific frequency points on the plot are automatically determined by bode based on the system's inherent dynamics.</p>

## Example

```matlab
H = tf([1 0.1 7.5],[1 0.12 9 0 0]);
bode(H,{1 10}, '-.')
```

<img src="bode1.svg" align="middle"/>

## See also

[plot](../graphics/plot.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
