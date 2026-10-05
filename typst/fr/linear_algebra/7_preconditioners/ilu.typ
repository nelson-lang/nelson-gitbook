#import "../nelson_help.typ": *

= ilu <linear_algebra:7_preconditioners.ilu>

Factorisation LU incomplete.

== Syntaxe

- #raw("LU = ilu(A)");
- #raw("LU = ilu(A, opts)");
- #raw("[L, U] = ilu(A)");
- #raw("[L, U] = ilu(A, opts)");
- #raw("[L, U, P] = ilu(A, opts)");

== Argument d'entrée

/ A: une matrice carree sparse flottante reelle ou complexe.
/ opts: une structure scalaire avec les champs optionnels type, droptol, fillfactor, udiag et thresh.

== Argument de sortie

/ LU: facteur sparse unique contenant la partie strictement inferieure de #strong[L]; et la partie superieure de #strong[U];.
/ L: facteur sparse triangulaire inferieur LU incomplet.
/ U: facteur sparse triangulaire superieur LU incomplet.
/ P: matrice sparse de permutation de lignes. Quand elle est retournee, #strong[P \* A]; est approximee par #strong[L \* U];.

== Description

#strong[ilu]; calcule des facteurs LU incomplets sparse utilisables comme preconditionneurs.

 #strong[opts.type]; peut valoir 'nofill' ou 'ilutp'. La valeur par defaut est 'nofill', qui conserve le motif sparse d'entree et n'applique pas de seuil de suppression.

 En mode 'ilutp', #strong[opts.droptol]; supprime les petites entrees, #strong[opts.fillfactor]; limite le remplissage conserve par ligne, #strong[opts.udiag]; autorise les pivots nuls, et #strong[opts.thresh]; est un seuil de pivotage entre 0 et 1. Les valeurs par defaut sont #strong[droptol \= 1e-4];, #strong[fillfactor \= 10];, #strong[udiag \= false]; et #strong[thresh \= 1];.

 Le mode 'ilutp' utilise un pivotage sparse par lignes. Avec trois sorties, #strong[P]; contient la permutation de lignes et #strong[P \* A]; est approximee par #strong[L \* U];. Avec une sortie, le facteur sparse compacte stocke la partie strictement inferieure de #strong[L]; et la partie superieure de #strong[U];.

 Les valeurs textuelles d'options comme #strong[opts.type]; peuvent etre des vecteurs lignes de caracteres ou des string scalars.

 Les matrices sparse double, single, double complexes et single complexes sont prises en charge. Les facteurs #strong[L]; et #strong[U]; conservent la classe numerique d'entree ; #strong[P]; est une matrice sparse de permutation.

 Les facteurs peuvent etre utilises directement comme preconditionneurs pour les solveurs de Krylov tels que #strong[gmres];, #strong[bicgstab];, #strong[bicg];, #strong[cgs]; et #strong[qmr];.

 Les pivots nuls non autorises, les options invalides et les matrices non carrees sont rejetes avant de retourner des facteurs incomplets.


== Fonction(s) utilisée(s)

Routines sparse Nelson

== Exemples

``````matlab
A = sparse([4 1 0; 2 3 1; 0 1 2]);
LU = ilu(A)
full(LU)

``````

``````matlab
A = sparse([4 1 0; 2 3 1; 0 1 2]);
[L, U] = ilu(A)
full(L * U)

``````

``````matlab
A = sparse([4 1 0; 2 3 1; 0 1 2]);
b = [1; 2; 3];
[L, U] = ilu(A);
x = bicgstab(A, b, 1e-12, 20, L, U)

``````

Factorisation ILUTP sparse single complexe.

``````matlab
A = sparse(single([4 1i; 2 3]));
opts.type = 'ilutp';
opts.droptol = 0;
[L, U, P] = ilu(A, opts)
full(P * A - L * U)
``````

Controler le pivotage et le remplissage conserve en mode avec seuil.

``````matlab
A = sparse([0.2 1; 1 1]);
opts.type = 'ilutp';
opts.droptol = 0;
opts.fillfactor = 10;
opts.thresh = 0.25;
[L, U, P] = ilu(A, opts);
full(P * A - L * U)

``````


== Voir aussi

#nlink(<linear_algebra:6_iterative_solvers.bicgstab>)[bicgstab];, #nlink(<linear_algebra:6_iterative_solvers.gmres>)[gmres];, #nlink(<linear_algebra:6_iterative_solvers.qmr>)[qmr];, #nlink(<linear_algebra:2_decompositions.lu>)[lu];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
  [2.0.0], [prise en charge des matrices sparse single et sparse single complexes, du mode ilutp, du pivotage, des options string scalar et de l'utilisation comme preconditionneur.],
)

// Auteur: Allan CORNET
