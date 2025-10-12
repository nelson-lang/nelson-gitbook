# Bibliothèque de sous-programmes en théorie du contrôle

Le module SLICOT fournit des algorithmes numériques avancés pour les calculs en automatique et théorie des systèmes.

Il comprend des outils pour la factorisation de matrices, l'équilibrage de systèmes, l'analyse de stabilité, l'affectation de pôles et la résolution des équations de Lyapunov, Riccati et Sylvester.

Le module prend en charge les systèmes temps continu et discret, y compris les systèmes descripteurs et multi-entrées, permettant une analyse, une conception et un contrôle précis et efficace des systèmes dynamiques complexes.

## Functions

- [Licence SLICOT](About_SLICOT_license.md) - À propos de la licence SLICOT.
- [slicot_ab01od](slicot_ab01od.md) - Forme en escalier pour systèmes multi-entrées utilisant des transformations orthogonales d'état et d'entrée.
- [slicot_ab04md](slicot_ab04md.md) - Conversion entre systèmes discrets et continus par transformation bilinéaire.
- [slicot_ab07nd](slicot_ab07nd.md) - Inverse d'un système linéaire donné.
- [slicot_ab08nd](slicot_ab08nd.md) - Construction d'un pencil régulier pour un système donné dont les valeurs propres généralisées sont les zéros invariants du système.
- [slicot_ag08bd](slicot_ag08bd.md) - Zéros et structure de Kronecker d'un pencil de système descripteur.
- [slicot_mb02md](slicot_mb02md.md) - Résolution du problème des moindres carrés totaux par une approche SVD.
- [slicot_mb03od](slicot_mb03od.md) - Détermination du rang d'une matrice par estimation conditionnelle incrémentale.
- [slicot_mb03pd](slicot_mb03pd.md) - Détermination du rang d'une matrice par estimation conditionnelle incrémentale (pivotement de lignes).
- [slicot_mb03rd](slicot_mb03rd.md) - Réduction d'une matrice en forme de Schur réelle vers une forme bloc-diagonale.
- [slicot_mb04gd](slicot_mb04gd.md) - Factorisation RQ avec pivotement de lignes d'une matrice.
- [slicot_mb04md](slicot_mb04md.md) - Équilibrage d'une matrice réelle générale.
- [slicot_mb05od](slicot_mb05od.md) - Exponentielle matricielle pour une matrice réelle, avec estimation de précision.
- [slicot_mc01td](slicot_mc01td.md) - Vérification de la stabilité d'un polynôme réel donné.
- [slicot_sb01bd](slicot_sb01bd.md) - Affectation de pôles pour une paire de matrices donnée (A,B).
- [slicot_sb02od](slicot_sb02od.md) - Résolution des équations de Riccati algébriques temps continu ou discret (méthode des vecteurs de Schur généralisés).
- [slicot_sb03md](slicot_sb03md.md) - Résolution des équations de Lyapunov temps continu ou discret et estimation de séparation.
- [slicot_sb03od](slicot_sb03od.md) - Résolution des équations de Lyapunov stables temps continu ou discret (facteur de Cholesky).
- [slicot_sb04md](slicot_sb04md.md) - Résolution des équations de Sylvester temps continu (méthode Hessenberg-Schur).
- [slicot_sb04qd](slicot_sb04qd.md) - Résolution des équations de Sylvester temps discret (méthode Hessenberg-Schur).
- [slicot_sb10jd](slicot_sb10jd.md) - Conversion d'un système d'espace d'état descripteur en forme d'espace d'état régulière.
- [slicot_sg02ad](slicot_sg02ad.md) - Solution of continuous- or discrete-time algebraic Riccati equations for descriptor systems.
- [slicot_tb01id](slicot_tb01id.md) - Équilibrage d'une matrice système correspondant au triplet (A, B, C).
- [slicot_tg01ad](slicot_tg01ad.md) - Équilibrage des matrices du pinceau système correspondant au triplet descripteur (A - λ E, B, C).
