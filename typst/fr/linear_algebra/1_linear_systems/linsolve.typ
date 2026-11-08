#import "../nelson_help.typ": *

= linsolve <linear_algebra:1_linear_systems.linsolve>

Résout un système d'équations linéaires.

== Syntaxe

- #raw("X = linsolve(A, B)");
- #raw("X = linsolve(A, B, opts)");
- #raw("[X, r] = linsolve(...)");

== Argument d'entrée

/ A: une matrice de coefficients.
/ B: le second membre.
/ opts: une structure d'options ; le champ #strong[TRANSA]; résout #strong[A'\*X \= B];.

== Argument de sortie

/ X: la solution de #strong[A\*X \= B];.
/ r: l'estimation du conditionnement inverse de #strong[A];.

== Description

#strong[X \= linsolve(A, B)]; résout le système linéaire #strong[A\*X \= B];.

 #strong[X \= linsolve(A, B, opts)]; utilise les options de #strong[opts]; ; définissez #strong[opts.TRANSA \= true]; pour résoudre #strong[A'\*X \= B];.


== Exemple

``````matlab
X = linsolve([2 0; 0 4], [6; 8])
``````


== Voir aussi

#nlink(<linear_algebra:1_linear_systems.inv>)[inv];, #nlink(<linear_algebra:1_linear_systems.rref>)[rref];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
