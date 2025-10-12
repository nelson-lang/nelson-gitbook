# nyquist

Nyquist plot of frequency response.

## Syntax

- nyquist(sys)
- nyquist(sys, w)
- [re, im, wout] = nyquist(sys)
- [re, im, wout] = nyquist(sys, w)

## Input argument

- sys - Dynamic system
- w - Frequencies: vector or {wmin,wmax}

## Output argument

- re - Real part of system response
- im - Imaginary part of system response
- wout - Frequencies

## Description

<p>The Nyquist function, nyquist(sys), generates a graphical representation known as a Nyquist plot, illustrating the frequency response of a dynamic system model represented by sys.</p>

<p>This plot visualizes both the real and imaginary components of the system's response across varying frequencies.</p>

<p>The contour depicted by nyquist encompasses both positive and negative frequencies.</p>

<p>Additionally, the plot incorporates arrows that signify the direction of increasing frequency for each branch.</p>

## Examples

```matlab
f = figure();
sys = tf([1, 1, 3, 3], [1, -3, 3, -1])
nyquist(sys);

```

<img src="nyquist_1.svg" align="middle"/>

```matlab
H = tf([2 5 1], [1 2 3]);
[re, im, wout] = nyquist(H);

```

```matlab
f = figure();
      H = tf([2 5 1], [1 2 3]);
nyquist(H);

```

<img src="nyquist_2.svg" align="middle"/>

## See also

[bode](../control_system/bode.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
