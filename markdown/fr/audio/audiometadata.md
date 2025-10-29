# audiometadata

Obtient/Définit les métadonnées du fichier audio.

## 📝 Syntaxe

- info = audiometadata(filename)
- info_previous = audiometadata(filename, info_new)

## 📥 Argument d'entrée

- filename - une chaîne : un nom de fichier audio valide.
- info_new - une structure : nouvelles informations sur le fichier audio à définir.

## 📤 Argument de sortie

- info - une structure : informations sur le fichier audio.
- info_previous - une structure : informations précédentes sur le fichier audio.

## 📄 Description

<b>audiometadata</b> retourne une structure avec les métadonnées d'un fichier audio.

<b>audiometadata</b> gère toutes les balises disponibles dans le fichier audio.

De nombreux formats audio sont supportés comme OGG, FLAC, WAV, RAW.

## 💡 Exemples

```matlab
wav_file = [modulepath('audio'), '/examples/haha.wav'];
info = audiometadata(wav_file)
```

```matlab
wav_file = [modulepath('audio'), '/examples/haha.wav'];
modified_wav_file = [tempdir(), 'haha_modified_tags.wav'];
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

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
