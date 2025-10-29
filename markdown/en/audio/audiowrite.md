# audiowrite

Writes an audio file.

## 📝 Syntax

- audiowrite(filename, y, fs)
- audiowrite(filename, y, fs, fieldname, fieldvalue, ...)

## 📥 Input argument

- filename - a string: filename to create.
- y - a matrix: audio data.
- fs - an integer value: sampling rate.
- fieldname - a string: 'BitsPerSample', 'BitRate', 'Quality', 'Title', 'Artist' or 'Comment' .
- fieldvalue - value associated to the fieldname.

## 📄 Description

<b>audiowrite</b> writes an audio file.

More 26 files format supported. See <b>audiosupportedformats</b> function to have all supported formats.

## 💡 Example

```matlab
wav_audio = [modulepath('audio'), '/examples/haha.wav'];
[y, fs] = audioread(wav_audio);
dest_ogg = [tempdir(), 'haha.ogg'];
audiowrite(dest_ogg, y, fs);
dest_flac = [tempdir(), 'haha.flac'];
audiowrite(dest_flac, y, fs);
dest_mp3 = [tempdir(), 'haha.mp3'];
audiowrite(dest_mp3, y, fs);
dest_caf = [tempdir(), 'haha.caf'];
audiowrite(dest_caf, y, fs);

```

## 🔗 See also

[audioplayer](../audio/audioplayer.md), [audiosupportedformats](../audio/audiosupportedformats.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
