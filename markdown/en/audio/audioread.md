# audioread

Read an audio file.

## Syntax

- y = audioread(filename)
- [y, fs] = audioread(filename)
- [y, fs] = audioread(filename, range)
- [y, fs] = audioread(filename, type)
- [y, fs] = audioread(filename, range, type)

## Input argument

- filename - a string: an existing filename.
- range - a vector: [start end].
- type - a string: 'double' or 'native'.

## Output argument

- y - a matrix: audio data.
- fs - an integer value: sampling rate.

## Description

  <p><b>audioread</b> reads an audio file.</p>
  <p>Supported format: 'wav', 'ogg', 'flac', 'mp3', 'caf', 'au', 'aiff'. See <b>audiosupportedformats</b> function to have all supported formats.</p>
  <p>If <b>type</b> is 'native' then audio data depends on the file format (single, double, integers).</p>

## Example

```matlab
wav_audio = [modulepath('audio'), '/examples/haha.wav'];
[y, fs] = audioread(wav_audio);
playObj = audioplayer(y, fs);
playblocking(playObj)
delete(playObj)
clear playObj
```

## See also

[playblocking](playblocking.md), [audioplayer](audioplayer.md), [audiosupportedformats](audiosupportedformats.md), [audiowrite](audiowrite.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
