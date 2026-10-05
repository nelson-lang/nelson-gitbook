#import "nelson_help.typ": *

= soundsc <audio:soundsc>

Met à l'échelle les données et joue comme son.

== Syntaxe

- #raw("soundsc(y)");
- #raw("soundsc(y, Fs)");
- #raw("soundsc(y, Fs, nBits)");
- #raw("soundsc(y, Fs, nBits, yRange)");

== Argument d'entrée

/ y: vecteur colonne ou matrice m-par-2.
/ Fs: fréquence d'échantillonnage, un nombre positif, 8192 par défaut.
/ nBits: profondeur de bits des valeurs d'échantillon : 8, 16 (par défaut), 24.
/ yRange: plage des données audio à mettre à l'échelle : vecteur à deux éléments ou \[-max(abs(y)),max(abs(y))\] par défaut.

== Description

#strong[soundsc]; met à l'échelle les valeurs du signal audio #strong[y]; pour s'adapter à la plage de #strong[–1.0]; à#strong[1.0]; et joue comme son.


== Exemple

``````matlab
signal = rand(2, 44100) - 0.5;
soundsc(signal, 44110, 16)

``````


== Voir aussi

#nlink(<audio:audioplayer>)[audioplayer];, #nlink(<audio:playblocking>)[playblocking];, #nlink(<audio:sound>)[sound];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
