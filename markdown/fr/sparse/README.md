# Type sparse

Le module Type Sparse fournit des outils pour créer et manipuler des matrices creuses dans Nelson.

Il prend en charge le stockage et le calcul efficaces pour les matrices avec un grand nombre d'éléments zéro, y compris la conversion entre les représentations creuses et pleines, la génération de matrices creuses spéciales, et l'accès aux éléments non nuls.

Ce module permet une gestion efficace en mémoire de grands ensembles de données et des opérations numériques optimisées sur des structures creuses.

## Functions

- [IJV](IJV.md) - Retourne les triplets I,J,V d'une matrice sparse.
- [full](full.md) - Conversion de matrice sparse vers pleine.
- [nnz](nnz.md) - Retourne le nombre d'éléments non nuls.
- [nzmax](nzmax.md) - Taille réservée pour les éléments non nuls.
- [sparse](sparse.md) - Définition de matrice sparse.
- [speye](speye.md) - Matrice identité sparse.
- [spones](spones.md) - Remplace les éléments non nuls d'une matrice sparse par des uns.
- [sprand](sprand.md) - Matrice sparse aléatoire à distribution uniforme.
- [sprandn](sprandn.md) - Matrice sparse aléatoire à distribution normale.
