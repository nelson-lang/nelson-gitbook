#import "nelson_help.typ": *

= speye <sparse:speye>

Matrice identité sparse.

== Syntaxe

- #raw("S = speye()");
- #raw("S = speye(n)");
- #raw("S = speye(n, m)");
- #raw("S = speye(sz)");

== Argument d'entrée

/ n, m: tailles de dimensions : scalaire entier non négatif.
/ sz: tailles de dimensions : vecteur ligne à deux éléments.

== Argument de sortie

/ S: une matrice sparse.

== Description

#strong[S \= speye()]; retourne un scalaire sparse 1.

 #strong[S \= speye(n)]; retourne une matrice identité sparse n-par-n, avec des uns sur la diagonale principale.

 #strong[S \= speye(n, m)]; retourne une matrice sparse n-par-m, avec des uns sur la diagonale principale.

 #strong[S \= speye(sz)]; retourne une matrice avec des uns sur la diagonale principale.


== Exemple

``````matlab

tic();S = speye(5000, 5000);toc()
tic();S = sparse(eye(5000, 5000));toc()
    
``````


== Voir aussi

#nlink(<sparse:sparse>)[sparse];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
