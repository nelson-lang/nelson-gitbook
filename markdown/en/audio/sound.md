# sound

Convert matrix of signal data to sound and play it.

## Syntax

- sound(y)
- sound(y, Fs)
- sound(y, Fs, nBits)
- sound(y, Fs, nBits)

## Input argument

- y - column vector or m-by-2 matrix.
- Fs - sample rate, a positive number, 8192 by default.
- nBits - bit depth of sample values: 8, 16 (default), 24.

## Description

  <p><b>sound</b> plays audio signal <b>y</b> to the speaker at sample rate of <b>Fs</b> hertz and uses <b>nBits</b> bits per sample.
	</p>

## Example

```matlab
signal = rand(2, 44100) - 0.5;
sound(signal, 44110, 16)
```

## See also

[audioplayer](audioplayer.md), [playblocking](playblocking.md), [soundsc](soundsc.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
