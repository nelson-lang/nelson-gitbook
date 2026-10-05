#import "../nelson_help.typ": *

= compreal <control_system:6_matrix_computations.compreal>

Réalisation compagnon des fonctions de transfert.

== Syntaxe

- #raw("[A, B, C, D, E] = compreal(numerator, denominator)");

== Argument d'entrée

/ numerator: un vecteur ou une matrice
/ denominator: un vecteur

== Argument de sortie

/ A (n x n): Représente la matrice de transition d'état du système. Elle décrit comment l'état interne du système évolue au fil du temps.
/ B (n x m): Décrit la correspondance entrée-état. Elle montre comment les entrées de contrôle affectent le changement dans l'état du système.
/ C (p x n): Représente la correspondance état-sortie. Elle montre comment les variables d'état du système sont liées aux sorties du système.
/ D (p x m): Décrit le passage direct des entrées aux sorties. Dans de nombreux systèmes, cette matrice est nulle car il n'y a pas de passage direct.
/ E (n x n): matrice.

== Description

#strong[\[A, B, C, D, E\] \= compreal(numerator, denominator)]; calcule une réalisation d'espace d'état représentée par les matrices A, B, C, D et E.

 La matrice #strong[E]; est une matrice vide (matrice identité) lorsqu'il y a au moins autant de pôles que de zéros.

 Cependant, si le nombre de zéros dépasse celui des pôles, la matrice #strong[E]; devient singulière.


== Exemple

``````matlab
numerator = [0 10 10];
denominator = [1 1 10];
[A, B, C, D, E] = compreal(numerator, denominator)
``````


== Voir aussi

#nlink(<control_system:1_dynamic_system_models.tf>)[tf];, #nlink(<control_system:1_dynamic_system_models.ss>)[ss];, #nlink(<linear_algebra:3_eigen_singular_values.balance>)[balance];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
