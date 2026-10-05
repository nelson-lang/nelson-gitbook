#import "../nelson_help.typ": *

= tensorprod <linear_algebra:1_linear_systems.tensorprod>

Produits tensoriels entre deux tableaux.

== Syntaxe

- #raw("C = tensorprod(A, B)");
- #raw("C = tensorprod(A, B, dimA, dimB)");
- #raw("C = tensorprod(A, B, 'all')");
- #raw("C = tensorprod(___, 'NumDimensionsA', value)");

== Argument d'entrée

/ A, B: tableaux numeriques.
/ dimA, dimB: vecteurs listant les dimensions de A et de B a contracter. size(A, dimA(k)) doit etre egal a size(B, dimB(k)).
/ value: nombre de dimensions de A, utilise pour prendre en compte les dimensions singleton finales.

== Argument de sortie

/ C: produit tensoriel. Ses dimensions sont les dimensions non contractees de A suivies des dimensions non contractees de B.

== Description

#strong[tensorprod(A, B)]; retourne le produit exterieur de A et de B, un tableau de taille \[size(A) size(B)\].

 #strong[tensorprod(A, B, dimA, dimB)]; contracte (somme les produits sur) les dimensions dimA de A avec les dimensions dimB de B. Pour des matrices, #strong[tensorprod(A, B, 2, 1)]; est le produit matriciel A\*B.

 #strong[tensorprod(A, B, 'all')]; contracte toutes les dimensions et retourne le produit interieur complet ; A et B doivent avoir la meme taille.

 #strong['NumDimensionsA']; precise le nombre de dimensions de A afin de pouvoir contracter les dimensions singleton finales.


== Exemple

``````matlab
A = [1 2; 3 4];
B = [5 6; 7 8];
C = tensorprod(A, B, 2, 1)
``````


== Voir aussi

#nlink(<linear_algebra:1_linear_systems.kron>)[kron];, #nlink(<elementary_functions:1_array_creation_shape.reshape>)[reshape];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
