#import "../nelson_help.typ": *

= eigs <linear_algebra:3_eigen_singular_values.eigs>

Valeurs propres et vecteurs propres selectionnes d'une matrice creuse.

== Syntaxe

- #raw("d = eigs(A)");
- #raw("d = eigs(A, k)");
- #raw("d = eigs(A, k, which)");
- #raw("d = eigs(A, k, sigma)");
- #raw("[V, D] = eigs(...)");

== Argument d'entrée

/ A: une matrice creuse carree double, single, double complexe ou single complexe.
/ k: un entier positif strictement inferieur a la dimension de la matrice. La valeur par defaut est 6.
/ which: une chaine selectionnant les valeurs propres : 'lm', 'sm', 'lr', 'sr', 'li', 'si', 'la' ou 'sa'.
/ sigma: un scalaire fini. Les valeurs propres les plus proches de sigma sont calculees en mode shift-invert. Les valeurs complexes de sigma sont prises en charge pour les matrices creuses complexes.

== Argument de sortie

/ d: valeurs propres selectionnees retournees dans un vecteur colonne dense.
/ V: matrice dense dont les colonnes sont les vecteurs propres selectionnes.
/ D: matrice diagonale dense contenant les valeurs propres selectionnees.

== Description

#strong[eigs]; calcule une partie des valeurs propres et, optionnellement, les vecteurs propres correspondants d'une matrice creuse flottante carree.

 Pour une matrice #strong[A];, les paires propres retournees verifient :

 #latex("A\\mathbf{v} = \\lambda\\mathbf{v}"); #strong[eigs(A, k, which)]; selectionne les valeurs propres par module, partie reelle ou partie imaginaire. Les valeurs 'la' et 'sa' sont acceptees comme alias des plus grandes et plus petites valeurs algebriques sur les matrices reelles symetriques.

 #strong[eigs(A, k, sigma)]; selectionne les valeurs propres les plus proches du scalaire #strong[sigma];.

 Lorsque le backend optionnel ARPACK n'est pas disponible, #strong[eigs]; utilise un fallback dense pour les petites matrices creuses. Les matrices creuses plus grandes necessitent toujours ARPACK afin d'eviter une utilisation memoire excessive.

 Les entrees sparse single et sparse single complexes sont acceptees. Le probleme propre selectionne est calcule par le backend sparse en double precision, puis les sorties denses sont reconverties en single ou single complexe lorsque cela s'applique.


== Exemples

``````matlab
A = sparse([4 1 0; 1 3 0; 0 0 2]);
d = eigs(A, 2)
[V, D] = eigs(A, 2)

``````

``````matlab
A = sparse(diag([1 2 4 8 16]));
d = eigs(A, 2, 3.5)

``````

``````matlab
A = sparse(diag([1 + 1i, 2 - 1i, 4 + 2i]));
d = eigs(A, 2, 2 + 0.5i)

``````

``````matlab
A = sparse(single(diag([1 + 1i, 2 - 1i, 4 + 2i])));
d = eigs(A, 2)

``````


== Voir aussi

#nlink(<linear_algebra:3_eigen_singular_values.eig>)[eig];, #nlink(<linear_algebra:3_eigen_singular_values.svds>)[svds];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [fallback dense ajoute pour les petites matrices creuses lorsque ARPACK n'est pas disponible.],
  [2.0.0], [entrees sparse single et sparse single complexes prises en charge via le backend sparse en double precision.],
)

// Auteur: Allan CORNET
