#import "../nelson_help.typ": *

= kron <linear_algebra:1_linear_systems.kron>

Produit tensoriel de Kronecker.

== Syntaxe

- #raw("K = kron(A, B)");

== Argument d'entrée

/ A: une matrice : scalaires, vecteurs ou matrices.
/ B: une matrice : scalaires, vecteurs ou matrices.

== Argument de sortie

/ K: résultat : produit tensoriel de Kronecker.

== Description

#strong[K \= kron(A, B)]; calcule le produit tensoriel de Kronecker des matrices#strong[A]; et #strong[B];.

 Pour des matrices

 #latex("A"); de taille

 #latex("m \\times n"); et

 #latex("B"); de taille

 #latex("p \\times q"); , le produit de Kronecker est :

 #latex("A \\otimes B = \\begin{pmatrix} a_{11}B & a_{12}B & \\cdots & a_{1n}B \\\\ a_{21}B & a_{22}B & \\cdots & a_{2n}B \\\\ \\vdots & \\vdots & \\ddots & \\vdots \\\\ a_{m1}B & a_{m2}B & \\cdots & a_{mn}B \\end{pmatrix}"); Le résultat est une matrice

 #latex("mp \\times nq"); .


== Bibliographie

https:\/\/en.wikipedia.org\/wiki\/Kronecker\_product

== Exemple

``````matlab
A = [1, 2; 3, 4];
B = [0, 5; 6, 7];
K = kron(A, B)

``````


== Voir aussi

#nlink(<special_functions:cross>)[cross];, #nlink(<elementary_functions:6_matrix_generation.hankel>)[hankel];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
