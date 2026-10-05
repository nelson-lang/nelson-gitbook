#import "nelson_help.typ": *

= audioread <audio:audioread>

Lit un fichier audio.

== Syntaxe

- #raw("y = audioread(filename)");
- #raw("[y, fs] = audioread(filename)");
- #raw("[y, fs] = audioread(filename, range)");
- #raw("[y, fs] = audioread(filename, type)");
- #raw("[y, fs] = audioread(filename, range, type)");

== Argument d'entrée

/ filename: une chaîne : un nom de fichier existant.
/ range: un vecteur : \[début fin\].
/ type: une chaîne : 'double' ou 'native'.

== Argument de sortie

/ y: une matrice : données audio.
/ fs: une valeur entière : taux d'échantillonnage.

== Description

#strong[audioread]; lit un fichier audio.

 Formats supportés : 'wav', 'ogg', 'flac', 'mp3', 'caf', 'au', 'aiff'. Voir la fonction #strong[audiosupportedformats]; pour tous les formats supportés.

 Si #strong[type]; est 'native', les données audio dépendent du format du fichier (single, double, entiers).


== Exemple

``````matlab
wav_audio = [modulepath('audio'), '/examples/haha.wav'];
[y, fs] = audioread(wav_audio);
playObj = audioplayer(y, fs);
playblocking(playObj)
delete(playObj)
clear playObj
``````


== Voir aussi

#nlink(<audio:playblocking>)[playblocking];, #nlink(<audio:audioplayer>)[audioplayer];, #nlink(<audio:audiosupportedformats>)[audiosupportedformats];, #nlink(<audio:audiowrite>)[audiowrite];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
