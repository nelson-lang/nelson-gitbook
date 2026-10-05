#import "../nelson_help.typ": *

= ichol <linear_algebra:7_preconditioners.ichol>

Factorisation de Cholesky incomplete.

== Syntaxe

- #raw("L = ichol(A)");
- #raw("L = ichol(A, opts)");

== Argument d'entrée

/ A: une matrice carree sparse flottante reelle symetrique ou complexe hermitienne.
/ opts: une structure scalaire avec les champs optionnels type, droptol, diagcomp, michol et shape.

== Argument de sortie

/ L: facteur sparse triangulaire inferieur ou superieur de Cholesky incomplet.

== Description

#strong[ichol]; calcule un facteur sparse triangulaire inferieur #strong[L]; utilisable comme preconditionneur.

 La matrice d'entree doit etre symetrique definie positive pour les donnees reelles ou hermitienne definie positive pour les donnees complexes.

 #strong[opts.type]; peut valoir 'nofill' ou 'ict'. La valeur par defaut est 'nofill'.

 #strong[opts.droptol]; est un scalaire positif ou nul utilise par le mode 'ict'. La valeur par defaut est #strong[0];. Les entrees dont le module est inferieur au seuil relatif a l'echelle de colonne sont supprimees du facteur incomplet.

 #strong[opts.diagcomp]; applique une compensation diagonale relative avant la factorisation. Cela peut rendre utilisables comme preconditionneurs des matrices definies positives limites ou des matrices hermitiennes difficiles, sans modifier la matrice sparse d'entree.

 #strong[opts.michol]; peut valoir 'on' ou 'off'. En mode 'ict', la variante modifiee reporte les entrees structurelles abandonnees sur la diagonale afin de mieux conserver les sommes de lignes.

 #strong[opts.shape]; peut valoir 'lower' ou 'upper'. La valeur par defaut est 'lower'.

 Les valeurs textuelles d'options comme #strong[opts.type];, #strong[opts.michol]; et #strong[opts.shape]; peuvent etre des vecteurs lignes de caracteres ou des string scalars.

 Les matrices sparse double, single, double complexes et single complexes sont prises en charge. Le facteur retourne conserve la classe numerique d'entree.

 Le facteur peut etre utilise directement comme preconditionneur pour #strong[pcg];, par exemple #strong[pcg(A, b, tol, maxit, L, L')];.

 Les matrices non symetriques, non hermitiennes, avec diagonale structurellement nulle, ou non definies positives sont rejetees avec un message explicite.


== Exemples

``````matlab
A = sparse([4 -1 0; -1 4 -1; 0 -1 3]);
L = ichol(A)
full(L * L')

``````

ICT avec suppression d'entrees.

``````matlab
A = sparse([4 -1 0; -1 4 -1; 0 -1 3]);
opts.type = 'ict';
opts.droptol = 0.6;
L = ichol(A, opts)

``````

``````matlab
A = sparse([4 -1 0; -1 4 -1; 0 -1 3]);
opts.shape = 'upper';
R = ichol(A, opts)

``````

Factorisation ICT sparse single complexe.

``````matlab
A = sparse(single([4 1i; -1i 3]));
opts.type = 'ict';
opts.droptol = 0;
L = ichol(A, opts)
b = single([1 + 2i; 3 - 1i]);
[x, flag] = pcg(A, b, 1e-6, 20, L, L')
``````

Compensation diagonale pour une matrice sparse hermitienne difficile.

``````matlab
A = sparse([1 2 + 1i; 2 - 1i 1]);
opts.diagcomp = 3;
L = ichol(A, opts);
full(L * L')

``````


== Voir aussi

#nlink(<linear_algebra:6_iterative_solvers.pcg>)[pcg];, #nlink(<linear_algebra:2_decompositions.chol>)[chol];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
  [2.0.0], [prise en charge des matrices sparse single et sparse single complexes, du mode ict, de diagcomp, de shape, des options string scalar et de l'utilisation comme preconditionneur.],
)

// Auteur: Allan CORNET
