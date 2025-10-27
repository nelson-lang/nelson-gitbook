# audiowrite

Écrit un fichier audio.

## 📝 Syntaxe

- audiowrite(filename, y, fs)
- audiowrite(filename, y, fs, fieldname, fieldvalue, ...)

## 📥 Argument d'entrée

- filename - une chaîne : nom de fichier à créer.
- y - une matrice : données audio.
- fs - une valeur entière : taux d'échantillonnage.
- fieldname - une chaîne : 'BitsPerSample', 'BitRate', 'Quality', 'Title', 'Artist' ou 'Comment' .
- fieldvalue - valeur associée au champ spécifié.

## 📄 Description

<b>audiowrite</b> écrit un fichier audio.

Plus de 26 formats de fichiers pris en charge. Voir la fonction <b>audiosupportedformats</b> pour avoir tous les formats pris en charge.

## 💡 Exemple

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

## 🔗 Voir aussi

[audioplayer](../audio/audioplayer.md), [audiosupportedformats](../audio/audiosupportedformats.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
