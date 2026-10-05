#import "../nelson_help.typ": *

= medfreq <signal_processing:2_measurements_feature_extraction.medfreq>

Frequence mediane du spectre d'un signal.

== Syntaxe

- #raw("Fmed = medfreq(X)");
- #raw("Fmed = medfreq(X, Fs)");
- #raw("Fmed = medfreq(Pxx, F)");
- #raw("[Fmed, P] = medfreq(...)");

== Argument d'entrée

/ X: signal temporel d'entree.
/ Fs: frequence d'echantillonnage.
/ Pxx, F: estimation de densite spectrale de puissance et vecteur de frequences associe.

== Argument de sortie

/ Fmed: frequence qui divise la puissance spectrale en deux parties egales.
/ P: puissance utilisee pour la mesure.

== Description

#strong[medfreq]; calcule la frequence mediane avec integration spectrale rectangulaire et interpolation lineaire entre les bordures de bins.


== Exemple

``````matlab

[f, p] = medfreq(sin((0:127)' * 0.1), 10);

``````


== Voir aussi

#nlink(<signal_processing:2_measurements_feature_extraction.meanfreq>)[meanfreq];, #nlink(<signal_processing:2_measurements_feature_extraction.bandpower>)[bandpower];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
