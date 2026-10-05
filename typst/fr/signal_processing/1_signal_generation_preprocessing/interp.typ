#import "../nelson_help.typ": *

= interp <signal_processing:1_signal_generation_preprocessing.interp>

Interpole un vecteur par un facteur entier.

== Syntaxe

- #raw("Y = interp(X, R)");
- #raw("Y = interp(X, R, N)");
- #raw("Y = interp(X, R, N, alpha)");

== Argument d'entrée

/ X: vecteur d'entree non vide. Sa longueur doit etre au moins 2\*N+1.
/ R: facteur entier positif d'interpolation.
/ N: parametre entier positif de longueur du filtre. La valeur par defaut vaut 4.
/ alpha: facteur de bande limitee dans l'intervalle (0, 1\]. La valeur par defaut vaut 0.5.

== Argument de sortie

/ Y: vecteur interpole de longueur R fois la longueur de X.

== Description

#strong[interp]; insere R-1 echantillons entre les echantillons d'entree puis applique un filtre FIR d'interpolation aux moindres carres. Une extrapolation lineaire aux bords est appliquee avant le filtrage pour retourner un vecteur avec la phase et la longueur attendues.


== Exemple

``````matlab

y = interp(1:8, 2, 2);

``````


== Voir aussi

#nlink(<signal_processing:1_signal_generation_preprocessing.upsample>)[upsample];, #nlink(<signal_processing:1_signal_generation_preprocessing.resample>)[resample];, #nlink(<signal_processing:1_signal_generation_preprocessing.upfirdn>)[upfirdn];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
