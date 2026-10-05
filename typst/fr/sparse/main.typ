#import "nelson_help.typ": *

= Type sparse

Le module Type Sparse fournit des outils pour créer et manipuler des matrices creuses dans Nelson.

 Il prend en charge le stockage et le calcul efficaces pour les matrices avec un grand nombre d'éléments zéro, y compris la conversion entre les représentations creuses et pleines, la génération de matrices creuses spéciales, et l'accès aux éléments non nuls.

 Ce module permet une gestion efficace en mémoire de grands ensembles de données et des opérations numériques optimisées sur des structures creuses.

== Functions

- #nlink(<sparse:IJV>)[IJV]: Retourne les triplets I,J,V d'une matrice sparse.
- #nlink(<sparse:full>)[full]: Conversion de matrice sparse vers pleine.
- #nlink(<sparse:nnz>)[nnz]: Retourne le nombre d'éléments non nuls.
- #nlink(<sparse:nonzeros>)[nonzeros]: Elements non nuls d'une matrice.
- #nlink(<sparse:nzmax>)[nzmax]: Taille réservée pour les éléments non nuls.
- #nlink(<sparse:spalloc>)[spalloc]: Cree une matrice sparse avec stockage reserve.
- #nlink(<sparse:sparse>)[sparse]: Définition de matrice sparse.
- #nlink(<sparse:spaugment>)[spaugment]: Construit une matrice sparse augmentee pour les moindres carres.
- #nlink(<sparse:spconvert>)[spconvert]: Convertit des donnees indexees en matrice sparse.
- #nlink(<sparse:spdiags>)[spdiags]: Extrait ou cree les diagonales d'une matrice sparse.
- #nlink(<sparse:speye>)[speye]: Matrice identité sparse.
- #nlink(<sparse:spfun>)[spfun]: Applique une fonction aux elements non nuls d'une matrice sparse.
- #nlink(<sparse:spones>)[spones]: Remplace les éléments non nuls d'une matrice sparse par des uns.
- #nlink(<sparse:sprand>)[sprand]: Matrice sparse aléatoire à distribution uniforme.
- #nlink(<sparse:sprandn>)[sprandn]: Matrice sparse aléatoire à distribution normale.
- #nlink(<sparse:sprank>)[sprank]: Rang structurel d'une matrice.
- #nlink(<sparse:symrcm>)[symrcm]: Permutation Reverse Cuthill-McKee.


#nested[
#pagebreak(weak: true)
#include "IJV.typ"
#pagebreak(weak: true)
#include "full.typ"
#pagebreak(weak: true)
#include "nnz.typ"
#pagebreak(weak: true)
#include "nonzeros.typ"
#pagebreak(weak: true)
#include "nzmax.typ"
#pagebreak(weak: true)
#include "spalloc.typ"
#pagebreak(weak: true)
#include "sparse.typ"
#pagebreak(weak: true)
#include "spaugment.typ"
#pagebreak(weak: true)
#include "spconvert.typ"
#pagebreak(weak: true)
#include "spdiags.typ"
#pagebreak(weak: true)
#include "speye.typ"
#pagebreak(weak: true)
#include "spfun.typ"
#pagebreak(weak: true)
#include "spones.typ"
#pagebreak(weak: true)
#include "sprand.typ"
#pagebreak(weak: true)
#include "sprandn.typ"
#pagebreak(weak: true)
#include "sprank.typ"
#pagebreak(weak: true)
#include "symrcm.typ"
]
