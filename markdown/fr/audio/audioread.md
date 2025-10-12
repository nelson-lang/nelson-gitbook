# audioread

Lit un fichier audio.

## Syntaxe

- y = audioread(filename)
- [y, fs] = audioread(filename)
- [y, fs] = audioread(filename, range)
- [y, fs] = audioread(filename, type)
- [y, fs] = audioread(filename, range, type)

## Argument d'entrée

- filename - une chaîne : un nom de fichier existant.
- range - un vecteur : [début fin].
- type - une chaîne : 'double' ou 'native'.

## Argument de sortie

- y - une matrice : données audio.
- fs - une valeur entière : taux d'échantillonnage.

## Description

<p>
            audioread lit un fichier audio.</p>

<p>Formats supportés : 'wav', 'ogg', 'flac', 'mp3', 'caf', 'au', 'aiff'. Voir la fonction audiosupportedformats pour tous les formats supportés.</p>

<p>Si type est 'native', les données audio dépendent du format du fichier (single, double, entiers).</p>

## Exemple

```matlab
wav_audio = [modulepath('audio'), '/examples/haha.wav'];
[y, fs] = audioread(wav_audio);
playObj = audioplayer(y, fs);
playblocking(playObj)
delete(playObj)
clear playObj
```

## Voir aussi

[playblocking](../audio/playblocking.md), [audioplayer](../audio/audioplayer.md), [audiosupportedformats](../audio/audiosupportedformats.md), [audiowrite](../audio/audiowrite.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
