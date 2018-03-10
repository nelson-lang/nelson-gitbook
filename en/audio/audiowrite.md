

# audiowrite

Writes an audio file.

## Syntax

- audiowrite(filename, y, fs)
- audiowrite(filename, y, fs, fieldname, fieldvalue, ...)

## Input argument

 - filename - a string: filename to create.
 - y - a matrix: audio data.
 - fs - an integer value: sampling rate.
 - fieldname - a string: 'BitsPerSample', 'BitRate', 'Quality', 'Title', 'Artist' or 'Comment' .
 - fieldvalue - value associated to the fieldname.

## Description


  <p><b>audiorwrite</b> writes an audio file.</p>
  <p>More 25 files format supported. See <b>audiosupportedformats</b> function to have all supported formats.</p>


## Example

```matlab
wav_audio = [modulepath('audio'), '/examples/haha.wav'];
[y, fs] = audioread(wav_audio);
dest_ogg = [tempdir(), '/haha.ogg'];
audiowrite(dest_ogg, y, fs);
dest_flac = [tempdir(), '/haha.flac'];
audiowrite(dest_flac, y, fs);
```

## See also

[audioplayer](audioplayer.md), [audiosupportedformats](audiosupportedformats.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



