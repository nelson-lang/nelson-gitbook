# audioinfo

Obtient les informations du fichier audio.

## 📝 Syntaxe

- info = audioinfo(filename)

## 📥 Argument d'entrée

- filename - une chaîne : un nom de fichier audio valide.

## 📤 Argument de sortie

- info - une structure : informations sur le fichier audio.

## 📄 Description


<b>audioinfo</b> retourne une structure avec les informations sur le fichier audio. 

De nombreux formats audio sont supportés comme OGG, FLAC, WAV, RAW.

## 💡 Exemple



```matlab

wav_file = [modulepath('audio'), '/examples/haha.wav'];
info = audioinfo(wav_file)

```


## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
