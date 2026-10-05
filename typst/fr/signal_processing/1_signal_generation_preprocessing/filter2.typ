#import "../nelson_help.typ": *

= filter2 <signal_processing:1_signal_generation_preprocessing.filter2>

Filtre numérique 2-D.

== Syntaxe

- #raw("Y = filter2(H, X)");
- #raw("Y = filter2(H, X, shape)");

== Argument d'entrée

/ H: coefficients de la fonction de transfert rationnelle.
/ X: données d'entrée.
/ shape: 'same' (par défaut), 'valid' ou 'full'.

== Argument de sortie

/ Y: résultat : filtre numérique 2-D.

== Description

#strong[Y \= filter2(H, X)]; applique un filtre à réponse impulsionnelle finie à une matrice de données X selon les coefficients de la matrice #strong[H];.


== Exemple

``````matlab
A = zeros(10);
A(3:7, 3:7) = ones(5);
H = [1 2 1; 0 0 0; -1 -2 -1];
R = filter2(H, A, 'valid')
``````


== Voir aussi

#nlink(<data_analysis:conv2>)[conv2];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
