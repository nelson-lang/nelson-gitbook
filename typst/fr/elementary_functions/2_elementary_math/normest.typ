#import "../nelson_help.typ": *

= normest <elementary_functions:2_elementary_math.normest>

Estimation de la norme 2

== Syntaxe

- #raw("nrm = normest(A)");
- #raw("[nrm, count] = normest(A)");
- #raw("nrm = normest(A, tolerance)");
- #raw("[nrm, count] = normest(A, tolerance)");

== Argument d'entrée

/ A: Matrice d'entrée
/ tolerance: tolerance relative d'erreur, scalaire fini positif ou nul.

== Argument de sortie

/ nrm: Norme de la matrice : scalaire.
/ count: Nombre d'itérations de la méthode de la puissance : scalaire.

== Description

#strong[nrm \= normest(A)]; renvoie une estimation de la norme 2 de la matrice#strong[A];.

 Les matrices sparse double, sparse single, sparse double complexes et sparse single complexes sont prises en charge. Une tolerance vide utilise l'estimation initiale par somme des colonnes, et une tolerance non vide controle l'arret de l'iteration de puissance.


== Exemple

``````matlab
M = [    0    2.4495         0         0         0         0         0
    2.4495         0    3.1623         0         0         0         0
         0    3.1623         0    3.4641         0         0         0
         0         0    3.4641         0    3.4641         0         0
         0         0         0    3.4641         0    3.1623         0
         0         0         0         0    3.1623         0    2.4495
         0         0         0         0         0    2.4495         0];
[nrm, count] = normest(M)
norm(M)


``````


== Voir aussi

#nlink(<elementary_functions:2_elementary_math.norm>)[norm];, #nlink(<linear_algebra:3_eigen_singular_values.svd>)[svd];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [prise en charge des entrees sparse single et sparse single complexes, y compris les valeurs nulles stockees; validation de tolerance renforcee.],
)

// Auteur: Allan CORNET
