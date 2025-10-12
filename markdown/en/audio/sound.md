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

<p>
            sound plays audio signal y to the speaker at sample rate of Fs hertz and uses nBits bits per sample.
	</p>

## Example

```matlab
signal = rand(2, 44100) - 0.5;
sound(signal, 44110, 16)

```

## See also

[audioplayer](../audio/audioplayer.md), [playblocking](../audio/playblocking.md), [soundsc](../audio/soundsc.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
