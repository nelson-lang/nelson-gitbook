



audiometadata


audiometadata

Get/Set metadata of audio file .

## Syntax

- info = audiometadata(filename)
- info_previous = audiometadata(filename, info_new)

## Input argument

 - filename - a string: an valid audio filename.
 - info_new - a struct: new information about audio file to set.

## Output argument

 - info - a struct: information about audio file.
 - info_previous - a struct: previous information about audio file.

## Description


  <p><b>audiometadata</b> returns a structure with metadata of an audio file.</p>
  <p><b>audiometadata</b> manages all tags available in the audio file.</p>
  <p>Many audio formats are supported as OGG, FLAC, WAV, RAW.</p>


## Examples

```Nelson
wav_file = [modulepath('audio'), '/examples/haha.wav'];
info = audiometadata(wav_file)
```
```Nelson
wav_file = [modulepath('audio'), '/examples/haha.wav'];
modified_wav_file = [tempdir(), '/haha_modified_tags.wav'];
if isfile(modified_wav_file)
  rmfile(modified_wav_file);
end
copyfile(wav_file, modified_wav_file);
info = audiometadata(modified_wav_file)
info.artist = 'Nelson';
audiometadata(modified_wav_file, info);
info = audiometadata(modified_wav_file)
if isfile(modified_wav_file)
  rmfile(modified_wav_file);
end
```

## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



