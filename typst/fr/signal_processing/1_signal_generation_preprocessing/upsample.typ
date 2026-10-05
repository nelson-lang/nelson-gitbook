#import "../nelson_help.typ": *

= upsample <signal_processing:1_signal_generation_preprocessing.upsample>

Suréchantillonne une séquence par un facteur entier.

== Syntaxe

- #raw("Y = upsample(X, n)");
- #raw("Y = upsample(X, n, phase)");
- #raw("Y = upsample(X, n, phase, dim)");

== Argument d'entrée

/ X: tableau d'entrée.
/ n: facteur de suréchantillonnage entier positif.
/ phase: phase optionnelle entre 0 et n - 1.
/ dim: dimension optionnelle à traiter.

== Argument de sortie

/ Y: tableau suréchantillonné avec insertion de zéros.

== Description

#strong[upsample]; insère n - 1 zéros entre les échantillons le long de la dimension choisie.


== Exemple

``````matlab

Y = upsample([1 2 3], 2)

``````


== Voir aussi

#nlink(<signal_processing:1_signal_generation_preprocessing.downsample>)[downsample];, #nlink(<signal_processing:1_signal_generation_preprocessing.upfirdn>)[upfirdn];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
