#import "../nelson_help.typ": *

= grpdelay <signal_processing:4_digital_filters.grpdelay>

Retard de groupe d'un filtre numerique.

== Syntaxe

- #raw("[Gd, W] = grpdelay(B, A)");
- #raw("[Gd, W] = grpdelay(B, A, N)");
- #raw("[Gd, F] = grpdelay(B, A, N, Fs)");
- #raw("[Gd, W] = grpdelay(B, A, N, 'whole')");
- #raw("[Gd, F] = grpdelay(B, A, N, 'whole', Fs)");

== Argument d'entrée

/ B: coefficients du numerateur.
/ A: coefficients du denominateur.
/ N: nombre de frequences.
/ Fs: frequence d'echantillonnage.

== Argument de sortie

/ Gd: retard de groupe.
/ W, F: vecteur de frequences.

== Description

#strong[grpdelay]; calcule le retard de groupe a partir de la derivee frequentielle de la fonction de transfert.


== Exemple

``````matlab

[gd, w] = grpdelay([1 1], 1, 16);

``````


== Voir aussi

#nlink(<signal_processing:4_digital_filters.phasez>)[phasez];, #nlink(<signal_processing:4_digital_filters.freqz>)[freqz];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
