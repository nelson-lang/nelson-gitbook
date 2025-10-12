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

<p>
            audioread reads an audio file.</p>

<p>Supported format: 'wav', 'ogg', 'flac', 'mp3', 'caf', 'au', 'aiff'. See audiosupportedformats function to have all supported formats.</p>

<p>If type is 'native' then audio data depends on the file format (single, double, integers).</p>

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

[playblocking](../audio/playblocking.md), [audioplayer](../audio/audioplayer.md), [audiosupportedformats](../audio/audiosupportedformats.md), [audiowrite](../audio/audiowrite.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
