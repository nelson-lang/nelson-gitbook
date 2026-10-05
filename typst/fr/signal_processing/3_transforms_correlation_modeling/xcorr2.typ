#import "../nelson_help.typ": *

= xcorr2 <signal_processing:3_transforms_correlation_modeling.xcorr2>

CorrÃƒÂ©lation croisÃƒÂ©e 2-D.

== Syntaxe

- #raw("C = xcorr2(A)");
- #raw("C = xcorr2(A, B)");

== Argument d'entrée

/ A: matrices
/ B: matrices

== Argument de sortie

/ C: matrice de corrÃƒÂ©lation croisÃƒÂ©e 2-D ou d'autocorrÃƒÂ©lation

== Description

#strong[xcorr2(A, B)]; calcule la corrÃƒÂ©lation croisÃƒÂ©e entre deux matrices, #strong[A]; et #strong[B];, en deux dimensions, sans mise ÃƒÂ  l'ÃƒÂ©chelle.


== Exemple

``````matlab
X = ones(2, 3);
H = [1 2; 3 4; 5 6];
C = xcorr2(H, X)
``````


== Voir aussi

#nlink(<signal_processing:1_signal_generation_preprocessing.filter2>)[filter2];, #nlink(<data_analysis:conv2>)[conv2];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.3.0], [version initiale],
)

// Auteur: Allan CORNET
