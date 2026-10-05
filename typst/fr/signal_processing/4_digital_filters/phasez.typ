#import "../nelson_help.typ": *

= phasez <signal_processing:4_digital_filters.phasez>

Reponse en phase d'un filtre numerique.

== Syntaxe

- #raw("[P, W] = phasez(B, A)");
- #raw("[P, W] = phasez(B, A, N)");
- #raw("[P, F] = phasez(B, A, N, Fs)");
- #raw("[P, W] = phasez(B, A, N, 'whole')");
- #raw("[P, F] = phasez(B, A, N, Fs, 'whole')");

== Argument d'entrée

/ B: coefficients du numerateur.
/ A: coefficients du denominateur.
/ N: nombre de frequences.
/ Fs: frequence d'echantillonnage.

== Argument de sortie

/ P: phase deroulee.
/ W, F: vecteur de frequences.

== Description

#strong[phasez]; calcule la phase deroulee de la reponse frequentielle retournee par freqz.


== Exemple

``````matlab

[p, w] = phasez([1 1], 1, 16);

``````


== Voir aussi

#nlink(<signal_processing:4_digital_filters.freqz>)[freqz];, #nlink(<signal_processing:4_digital_filters.grpdelay>)[grpdelay];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
