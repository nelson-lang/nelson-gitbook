#import "../nelson_help.typ": *

= meanfreq <signal_processing:2_measurements_feature_extraction.meanfreq>

Frequence moyenne du spectre d'un signal.

== Syntaxe

- #raw("Fmean = meanfreq(X)");
- #raw("Fmean = meanfreq(X, Fs)");
- #raw("Fmean = meanfreq(Pxx, F)");
- #raw("[Fmean, P] = meanfreq(...)");

== Argument d'entrée

/ X: signal temporel d'entree.
/ Fs: frequence d'echantillonnage.
/ Pxx, F: estimation de densite spectrale de puissance et vecteur de frequences associe.

== Argument de sortie

/ Fmean: frequence moyenne ponderee par la puissance.
/ P: puissance utilisee pour la mesure.

== Description

#strong[meanfreq]; calcule la frequence moyenne ponderee par la puissance. Les entrees temporelles utilisent un periodogramme a fenetre rectangulaire de longueur egale a l'entree.


== Exemple

``````matlab

[f, p] = meanfreq(sin((0:127)' * 0.1), 10);

``````


== Voir aussi

#nlink(<signal_processing:2_measurements_feature_extraction.medfreq>)[medfreq];, #nlink(<signal_processing:2_measurements_feature_extraction.bandpower>)[bandpower];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
