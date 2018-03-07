



audioread


audioread

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
  <p>Supported format: 'wav', 'ogg', 'flac', 'au', 'aiff'. See <b>audiosupportedformats</b> function to have all supported formats.</p>
  <p>If <b>type</b> is 'native' then audio data depends on the file format (single, double, integers).</p>


## Example

```Nelson
wav_audio = [modulepath('audio'), '/examples/haha.wav'];
[y, fs] = audioread(wav_audio);
playObj = audioplayer(y, fs);
playblocking(playObj)
delete(playObj)
clear playObj
```

## See also

playblocking.md playblocking, audioplayer.md audioplayer, audiosupportedformats.md audiosupportedformats, audiowrite.md audiowrite.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



