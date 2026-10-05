#import "nelson_help.typ": *

= sound <audio:sound>

Convertit une matrice de données de signal en son et le joue.

== Syntaxe

- #raw("sound(y)");
- #raw("sound(y, Fs)");
- #raw("sound(y, Fs, nBits)");
- #raw("sound(y, Fs, nBits)");

== Argument d'entrée

/ y: vecteur colonne ou matrice m-par-2.
/ Fs: fréquence d'échantillonnage, un nombre positif, 8192 par défaut.
/ nBits: profondeur de bits des valeurs d'échantillon : 8, 16 (par défaut), 24.

== Description

#strong[sound]; joue le signal audio #strong[y]; sur le haut-parleur à une fréquence d'échantillonnage de #strong[Fs]; hertz et utilise #strong[nBits]; bits par échantillon.


== Exemple

``````matlab
signal = rand(2, 44100) - 0.5;
sound(signal, 44110, 16)

``````


== Voir aussi

#nlink(<audio:audioplayer>)[audioplayer];, #nlink(<audio:playblocking>)[playblocking];, #nlink(<audio:soundsc>)[soundsc];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
