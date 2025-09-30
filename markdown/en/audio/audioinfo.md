# audioinfo

Get audio file information.

## Syntax

- info = audioinfo(filename)

## Input argument

- filename - a string: an valid audio filename.

## Output argument

- info - a struct: information about audio file.

## Description

<p>
            <b>audioinfo</b> returns a structure with information about audio file.</p>
<p>Many audio formats are supported as OGG, FLAC, WAV, RAW.</p>

## Example

```matlab

wav_file = [modulepath('audio'), '/examples/haha.wav'];
info = audioinfo(wav_file)

```

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
