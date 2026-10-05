#import "../nelson_help.typ": *

= round <elementary_functions:2_elementary_math.round>

Arrondir à l'entier le plus proche

== Syntaxe

- #raw("C = round(A)");
- #raw("C = round(A, N)");
- #raw("C = round(A, N, 'decimals')");
- #raw("C = round(A, N, 'significant')");

== Argument d'entrée

/ A: une variable
/ N: nombre de chiffres : entier reel scalaire.
/ type: 'decimals' (defaut) ou 'significant'.

== Argument de sortie

/ C: résultat de round.

== Description

#strong[round]; arrondit les éléments à l'entier le plus proche.

 #strong[round(A, N)]; arrondit a #strong[N]; chiffres apres la virgule (#strong[N]; peut etre negatif). Equivalent a #strong[round(A, N, 'decimals')];.

 #strong[round(A, N, 'significant')]; arrondit a #strong[N]; chiffres significatifs ; ici #strong[N]; doit etre positif.

 Les entrees sparse single et sparse single complexes sont prises en charge. Seules les entrees non nulles stockees sont arrondies et le resultat conserve le stockage sparse.


== Exemples

``````matlab
round(pi)
``````

Arrondi a un nombre de decimales ou de chiffres significatifs.

``````matlab
round(3.14159, 2)
round(12345, 2, 'significant')
``````

Arrondi au plus proche d'une matrice sparse single.

``````matlab
S = sparse(single([1.2 0; -2.7 3.1]));
C = round(S)
``````


== Voir aussi

#nlink(<elementary_functions:2_elementary_math.floor>)[floor];, #nlink(<elementary_functions:2_elementary_math.fix>)[fix];, #nlink(<elementary_functions:2_elementary_math.ceil>)[ceil];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [prise en charge des entrees sparse single et sparse single complexes.],
  [2.0.0], [ajout de round(A, N) et des options 'decimals' \/ 'significant'.],
)

// Auteur: Allan CORNET
