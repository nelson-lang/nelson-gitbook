#import "../nelson_help.typ": *

= find <elementary_functions:7_indexing_dimensions.find>

Trouver les elements non nuls

== Syntaxe

- #raw("K = find(M)");
- #raw("[R, C] = find(M)");
- #raw("[R, C, V] = find(M)");
- #raw("K = find(M, N)");
- #raw("[R, C] = find(M, N)");
- #raw("[R, C, V] = find(M, N)");
- #raw("K = find(M, N, D)");
- #raw("[R, C] = find(M, N, D)");
- #raw("[R, C, V] = find(M, N, D)");

== Argument d'entrée

/ M: un scalaire, vecteur, matrice, tableau multidimensionnel ou matrice sparse.
/ N: entier positif, ou #strong[Inf]; : nombre de non-zeros a trouver.
/ D: direction : 'first' (par defaut) ou 'last'. La valeur est insensible a la casse.

== Argument de sortie

/ K: indices des elements non nuls (vecteur).
/ R: indices de lignes (vecteur).
/ C: indices de colonnes (vecteur).
/ V: elements non nuls de M (vecteur).

== Description

#strong[K \= find(M)]; renvoie un vecteur contenant les indices lineaires de chaque element non nul de #strong[M];.

 #strong[find(M, Inf)]; renvoie tous les indices non nuls et peut etre combine avec l'argument de direction.

 Pour une entree sparse, #strong[find]; accepte les matrices sparse double, single, logiques, double complexes et single complexes. Les valeurs nulles stockees sont ignorees ; seules les entrees dont la valeur est reellement non nulle sont retournees.

 Avec trois sorties, #strong[V]; conserve la classe des valeurs de la matrice sparse d'entree, y compris les valeurs single et logiques.


== Exemples

``````matlab
M = rand(4, 3, 5);
[R, C, V] = find(M > 0.9)
M(R(1),C(1),V(1))
``````

``````matlab
K = find([0 2 0 3], Inf, 'LAST')
``````

``````matlab
S = sparse([1 2 1 2], [1 1 2 2], single([0 -0 complex(0, 0) complex(0, 2)]), 2, 2, 4);
[R, C, V] = find(S)
``````


== Voir aussi

#nlink(<string:3_find_replace.strfind>)[strfind];, #nlink(<sparse:sparse>)[sparse];, #nlink(<sparse:nonzeros>)[nonzeros];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [support sparse single et single complexe etendu],
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
