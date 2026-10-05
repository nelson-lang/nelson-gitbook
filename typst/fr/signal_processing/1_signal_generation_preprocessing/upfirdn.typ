#import "../nelson_help.typ": *

= upfirdn <signal_processing:1_signal_generation_preprocessing.upfirdn>

Surechantillonne, filtre en FIR, puis sous-echantillonne.

== Syntaxe

- #raw("Y = upfirdn(X, H)");
- #raw("Y = upfirdn(X, H, P, Q)");
- #raw("Y = upfirdn(X, H, P, Q, dim)");

== Argument d'entrée

/ X: signal d'entree non vide et non sparse.
/ H: coefficients FIR non vides et non sparse. Une matrice applique une colonne de filtre par colonne de signal.
/ P: facteur de surechantillonnage.
/ Q: facteur de sous-echantillonnage.
/ dim: dimension a traiter.

== Argument de sortie

/ Y: sortie filtree multirate.

== Description

#strong[upfirdn]; fournit l'operation multirate de base utilisee par les fonctions de reechantillonnage.

Lorsque #strong[H]; est une matrice, chaque colonne de #strong[H]; filtre la colonne de signal correspondante.


== Exemples

``````matlab

Y = upfirdn([1 2 3], [1 1], 2, 2);

``````

``````matlab

Y = upfirdn([1; 2], [1 2; 3 4]);

``````


== Voir aussi

#nlink(<signal_processing:1_signal_generation_preprocessing.upsample>)[upsample];, #nlink(<signal_processing:1_signal_generation_preprocessing.downsample>)[downsample];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
