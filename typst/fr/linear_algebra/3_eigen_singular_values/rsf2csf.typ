#import "../nelson_help.typ": *

= rsf2csf <linear_algebra:3_eigen_singular_values.rsf2csf>

Convertit la forme de Schur réelle en forme de Schur complexe.

== Syntaxe

- #raw("[Uc, Tc] = rsf2csf(U, T)");

== Argument d'entrée

/ U: unitary matrix (double or single, real or complex)
/ T: schur form (double or single, real or complex)

== Argument de sortie

/ Uc: transformed unitary matrix
/ Tc: transformed schur form

== Description

#strong[\[Uc, Tc\] \= rsf2csf(U, T)]; transforme les sorties de #strong[\[U, T\] \= schur(X)]; pour des matrices réelles#strong[X]; de la forme de Schur réelle à la forme de Schur complexe.


== Exemple

``````matlab
X = [1,     1,     1,     3;
     1,     2,     1,     1;
     1,     1,     3,     1;
    -2,     1,     1,     4];
[U, T] = schur(X)
[Uc, Tc] = rsf2csf(U, T)
``````


== Voir aussi

#nlink(<linear_algebra:3_eigen_singular_values.schur>)[schur];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
