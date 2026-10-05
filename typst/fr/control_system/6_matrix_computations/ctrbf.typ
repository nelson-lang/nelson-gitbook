#import "../nelson_help.typ": *

= ctrbf <control_system:6_matrix_computations.ctrbf>

Calcule la forme escalier de contrôlabilité.

== Syntaxe

- #raw("[Abar, Bbar, Cbar, T, k] = ctrbf(A, B, C)");
- #raw("[Abar, Bbar, Cbar, T, k] = ctrbf(A, B, C, tol)");

== Argument d'entrée

/ A: Matrice d'état : matrice Nx-par-Nx
/ B: Matrice entrée-état : matrice Nx-par-Nu
/ C: Matrice sortie-état : matrice Ny-par-Nx
/ tol: scalaire réel (tolérance).

== Argument de sortie

/ Abar: Matrice d'état de la forme escalier de contrôlabilité.
/ Bbar: Matrice d'entrée de la forme escalier de contrôlabilité.
/ Cbar: Matrice de sortie de la forme escalier de contrôlabilité.
/ T: Matrice de transformation de similarité.
/ k: Vecteur : nombre d'états contrôlables.

== Description

#strong[ctrbf(A, B, C)]; décompose le système d'espace d'état donné, défini par les matrices #strong[A];, #strong[B]; et #strong[C];, en forme escalier de contrôlabilité.

 Cela produit les matrices transformées #strong[Abar];,#strong[Bbar]; et #strong[Cbar];, ainsi qu'une matrice de transformation de similarité #strong[T]; et un vecteur #strong[k];.

 La longueur du vecteur #strong[k]; est égale à l'ordre du système représenté par #strong[A];, et chaque entrée dans #strong[k]; désigne le nombre d'états contrôlables factorisés à chaque étape du calcul de la matrice de transformation.

 Les éléments non nuls dans #strong[k]; indiquent le nombre d'itérations requises pour le calcul de #strong[T]; , et la somme de #strong[k]; correspond au nombre d'états dans #strong[Ac];, la portion contrôlable de #strong[Abar];.


== Exemple

``````matlab
A = [-1.5  -0.5; 1     0];
B = [0.5; 0];
C = [0   1];
[Abar, Bbar, Cbar, T, k] = ctrbf(A, B, C)
``````


== Voir aussi

#nlink(<control_system:6_matrix_computations.ctrb>)[ctrb];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
