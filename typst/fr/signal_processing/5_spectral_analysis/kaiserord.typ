#import "../nelson_help.typ": *

= kaiserord <signal_processing:5_spectral_analysis.kaiserord>

Parametres de conception FIR par fenetre de Kaiser.

== Syntaxe

- #raw("[N, Wn, beta, ftype] = kaiserord(F, A, DEV)");
- #raw("[N, Wn, beta, ftype] = kaiserord(F, A, DEV, Fs)");

== Argument d'entrée

/ F: frequences limites de bandes.
/ A: amplitudes desirees.
/ DEV: ecarts autorises.
/ Fs: frequence d'echantillonnage.

== Argument de sortie

/ N: ordre estime du filtre.
/ Wn: frequence de coupure.
/ beta: parametre beta de Kaiser.
/ ftype: chaine de type de filtre.

== Description

#strong[kaiserord]; estime des parametres FIR utilisables avec #strong[fir1]; et #strong[kaiser];.


== Exemple

``````matlab

[n, wn, beta, ftype] = kaiserord([0.2 0.3], [1 0], [0.01 0.001]);

``````


== Voir aussi

#nlink(<signal_processing:5_spectral_analysis.kaiser>)[kaiser];, #nlink(<signal_processing:4_digital_filters.fir1>)[fir1];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
