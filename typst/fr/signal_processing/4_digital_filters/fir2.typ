#import "../nelson_help.typ": *

= fir2 <signal_processing:4_digital_filters.fir2>

Conception de filtre FIR par echantillonnage frequentiel.

== Syntaxe

- #raw("B = fir2(N, F, M)");
- #raw("B = fir2(N, F, M, window)");

== Argument d'entrée

/ N: ordre du filtre.
/ F: points de frequence normalises.
/ M: amplitudes desirees.
/ window: vecteur de fenetre.

== Argument de sortie

/ B: coefficients FIR du numerateur.

== Description

#strong[fir2]; concoit un filtre FIR a phase lineaire depuis une reponse frequentielle arbitraire.


== Exemple

``````matlab

b = fir2(16, [0 0.4 0.6 1], [1 1 0 0]);

``````


== Voir aussi

#nlink(<signal_processing:4_digital_filters.fir1>)[fir1];, #nlink(<signal_processing:4_digital_filters.freqz>)[freqz];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
