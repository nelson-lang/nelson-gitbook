#import "../nelson_help.typ": *

= resample <signal_processing:1_signal_generation_preprocessing.resample>

Change la frequence d'echantillonnage par un facteur rationnel.

== Syntaxe

- #raw("Y = resample(X, P, Q)");
- #raw("Y = resample(X, P, Q, N)");
- #raw("Y = resample(X, P, Q, N, Beta)");
- #raw("Y = resample(X, P, Q, B)");
- #raw("Y = resample(..., 'Dimension', Dim)");

== Argument d'entrée

/ X: signal ou tableau d'entree.
/ P: facteur de surechantillonnage.
/ Q: facteur de sous-echantillonnage.
/ N: facteur de demi-longueur du filtre. La valeur par defaut est 10.
/ Beta: parametre de forme de la fenetre de Kaiser. La valeur par defaut est 5.
/ B: coefficients FIR du filtre anti-repliement.
/ Dim: dimension de travail.

== Argument de sortie

/ Y: signal reechantillonne.

== Description

#strong[resample]; change la frequence d'un signal en filtrant entre surechantillonnage et sous-echantillonnage.


== Exemple

``````matlab

y = resample(1:10, 3, 2);

``````


== Voir aussi

#nlink(<signal_processing:1_signal_generation_preprocessing.upfirdn>)[upfirdn];, #nlink(<signal_processing:1_signal_generation_preprocessing.decimate>)[decimate];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
