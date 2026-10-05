#import "nelson_help.typ": *

= sparse <sparse:sparse>

Définition de matrice sparse.

== Syntaxe

- #raw("sp = sparse(M)");
- #raw("sp = sparse(m, n)");
- #raw("sp = sparse(I, J, V)");
- #raw("sp = sparse(I, J, V, m, n)");
- #raw("sp = sparse(I, J, V, m, n, nz)");

== Argument d'entrée

/ M: une matrice : double ou logique.
/ m: une valeur entière : dimension des lignes.
/ n: une valeur entière : dimension des colonnes
/ I: un vecteur.
/ J: un vecteur.
/ V: un vecteur.
/ nz: une valeur entière : allocation de stockage pour les éléments non nuls.

== Argument de sortie

/ S: une matrice sparse.

== Description

#strong[sparse]; est utilisé pour construire une matrice sparse. Seuls les éléments non nuls sont stockés.

 Si #strong[M]; est une matrice pleine,#strong[sparse]; la convertit en représentation sparse, supprimant toutes les valeurs nulles.

 Si nz n'est pas spécifié, #strong[sparse]; utilise comme valeur par défaut : nz \= max(\[numel(i), numel(j), numel(v)\])

 Si plusieurs valeurs sont spécifiées avec les mêmes indices i, j, la valeur associée sera la somme des valeurs à l'indice répété.


== Exemples

``````matlab
sp = sparse(eye(3,3))
``````

``````matlab
sp = sparse(3, 3)
``````

``````matlab
I = [1 2 3];
J = [3 1 2];
V = [32 42 53];
sp = sparse(I, J, V)
size(sp)
``````

``````matlab
I = [1 2 3];
J = [3 1 2];
V = [32 42 53];
sp = sparse(I, J, V, 5, 4)
size(sp)
nnz(sp)
nzmax(sp)
``````

``````matlab
I = [1 2 3];
J = [3 1 2];
V = [32 42 53];
sp = sparse(I, J, V, 5, 4, 10)
size(sp)
nnz(sp)
nzmax(sp)
``````


== Voir aussi

#nlink(<sparse:full>)[full];, #nlink(<sparse:IJV>)[IJV];, #nlink(<sparse:nnz>)[nnz];, #nlink(<sparse:nzmax>)[nzmax];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
