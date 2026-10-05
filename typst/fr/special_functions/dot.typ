#import "nelson_help.typ": *

= dot <special_functions:dot>

Produit scalaire.

== Syntaxe

- #raw("R = dot(A, B)");
- #raw("R = dot(A, B, dim)");

== Argument d'entrée

/ A, B: tableaux numériques.
/ dim: scalaire entier positif : Dimension le long de laquelle opérer.

== Argument de sortie

/ R: Produit scalaire.

== Description

#strong[R \= dot(A, B)]; retourne le produit scalaire de #strong[A]; et#strong[B];.

 Pour les vecteurs réels

 #latex("\\mathbf{a}"); et

 #latex("\\mathbf{b}"); de longueur

 #latex("n"); :

 #latex("\\mathbf{a} \\cdot \\mathbf{b} = \\sum_{i=1}^{n} a_i b_i = a_1 b_1 + a_2 b_2 + \\cdots + a_n b_n"); Pour les vecteurs complexes, le produit scalaire est :

 #latex("\\mathbf{a} \\cdot \\mathbf{b} = \\sum_{i=1}^{n} \\overline{a_i} b_i"); où

 #latex("\\overline{a_i}"); dénote le conjugué complexe de

 #latex("a_i");
== Bibliographie

https:\/\/en.wikipedia.org\/wiki\/Dot\_product

== Exemple

``````matlab
A = [1 2 3;4 5 6;7 8 9];
B = [9 8 7;6 5 4;3 2 1];
R = dot(A, B)
R = dot(A, B, 2)
``````


== Voir aussi

#nlink(<elementary_functions:3_complex_numbers.conj>)[conj];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
