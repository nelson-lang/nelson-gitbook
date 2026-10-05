#import "../nelson_help.typ": *

= repelem <elementary_functions:1_array_creation_shape.repelem>

Repete les elements d'un tableau.

== Syntaxe

- #raw("B = repelem(V, n)");
- #raw("B = repelem(V, r)");
- #raw("B = repelem(A, r, c)");

== Argument d'entrée

/ V: vecteur.
/ A: matrice.
/ n: nombre de repetitions : entier scalaire.
/ r, c: nombres de repetitions : entier scalaire ou vecteur.

== Argument de sortie

/ B: resultat : vecteur ou matrice.

== Description

#strong[repelem(V, n)]; repete chaque element du vecteur #strong[V]; #strong[n]; fois.

 #strong[repelem(V, r)]; utilise un vecteur #strong[r]; pour repeter l'element #strong[V(i)]; exactement #strong[r(i)]; fois.

 #strong[repelem(A, r, c)]; repete les lignes de la matrice #strong[r]; fois et les colonnes #strong[c]; fois.


== Exemple

``````matlab
repelem([1 2 3], 2)
repelem([1 2 3], [1 2 3])
``````


== Voir aussi

#nlink(<elementary_functions:1_array_creation_shape.repmat>)[repmat];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
