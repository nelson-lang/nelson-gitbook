#import "../nelson_help.typ": *

= decimate <signal_processing:1_signal_generation_preprocessing.decimate>

Filtre passe-bas puis sous-echantillonne un vecteur.

== Syntaxe

- #raw("Y = decimate(X, Q)");
- #raw("Y = decimate(X, Q, N)");
- #raw("Y = decimate(X, Q, N, 'iir')");
- #raw("Y = decimate(X, Q, N, 'fir')");

== Argument d'entrée

/ X: vecteur d'entree non vide.
/ Q: facteur entier de decimation strictement superieur a un.
/ N: ordre du filtre. L'ordre par defaut vaut 8 en mode IIR et 30 en mode FIR.

== Argument de sortie

/ Y: vecteur decime.

== Description

#strong[decimate]; applique un filtre passe-bas anti-repliement puis conserve un echantillon sur Q. Le mode par defaut utilise un filtre IIR de Chebyshev type I avec filtrage aller-retour a phase nulle. Le mode #strong['fir']; utilise un filtre passe-bas FIR fenetre et compense son delai avant le sous-echantillonnage.


== Exemple

``````matlab

y = decimate(1:20, 2, 4, 'fir');

``````


== Voir aussi

#nlink(<signal_processing:1_signal_generation_preprocessing.downsample>)[downsample];, #nlink(<signal_processing:1_signal_generation_preprocessing.resample>)[resample];, #nlink(<signal_processing:1_signal_generation_preprocessing.upfirdn>)[upfirdn];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
