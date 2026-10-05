#import "nelson_help.typ": *

= Bibliothèque de sous-programmes en théorie du contrôle

Le module SLICOT fournit des algorithmes numériques avancés pour les calculs en automatique et théorie des systèmes.

 Il comprend des outils pour la factorisation de matrices, l'équilibrage de systèmes, l'analyse de stabilité, l'affectation de pôles et la résolution des équations de Lyapunov, Riccati et Sylvester.

 Le module prend en charge les systèmes temps continu et discret, y compris les systèmes descripteurs et multi-entrées, permettant une analyse, une conception et un contrôle précis et efficace des systèmes dynamiques complexes.

== Functions

- #nlink(<slicot:About_SLICOT_license>)[Licence SLICOT]: À propos de la licence SLICOT.
- #nlink(<slicot:slicot_ab01od>)[slicot\_ab01od]: Forme en escalier pour systèmes multi-entrées utilisant des transformations orthogonales d'état et d'entrée.
- #nlink(<slicot:slicot_ab04md>)[slicot\_ab04md]: Conversion entre systèmes discrets et continus par transformation bilinéaire.
- #nlink(<slicot:slicot_ab07nd>)[slicot\_ab07nd]: Inverse d'un système linéaire donné.
- #nlink(<slicot:slicot_ab08nd>)[slicot\_ab08nd]: Construction d'un pencil régulier pour un système donné dont les valeurs propres généralisées sont les zéros invariants du système.
- #nlink(<slicot:slicot_ag08bd>)[slicot\_ag08bd]: Zéros et structure de Kronecker d'un pencil de système descripteur.
- #nlink(<slicot:slicot_mb02md>)[slicot\_mb02md]: Résolution du problème des moindres carrés totaux par une approche SVD.
- #nlink(<slicot:slicot_mb03od>)[slicot\_mb03od]: Détermination du rang d'une matrice par estimation conditionnelle incrémentale.
- #nlink(<slicot:slicot_mb03pd>)[slicot\_mb03pd]: Détermination du rang d'une matrice par estimation conditionnelle incrémentale (pivotement de lignes).
- #nlink(<slicot:slicot_mb03rd>)[slicot\_mb03rd]: Réduction d'une matrice en forme de Schur réelle vers une forme bloc-diagonale.
- #nlink(<slicot:slicot_mb04gd>)[slicot\_mb04gd]: Factorisation RQ avec pivotement de lignes d'une matrice.
- #nlink(<slicot:slicot_mb04md>)[slicot\_mb04md]: Équilibrage d'une matrice réelle générale.
- #nlink(<slicot:slicot_mb05od>)[slicot\_mb05od]: Exponentielle matricielle pour une matrice réelle, avec estimation de précision.
- #nlink(<slicot:slicot_mc01td>)[slicot\_mc01td]: Vérification de la stabilité d'un polynôme réel donné.
- #nlink(<slicot:slicot_sb01bd>)[slicot\_sb01bd]: Affectation de pôles pour une paire de matrices donnée (A,B).
- #nlink(<slicot:slicot_sb02od>)[slicot\_sb02od]: Résolution des équations de Riccati algébriques temps continu ou discret (méthode des vecteurs de Schur généralisés).
- #nlink(<slicot:slicot_sb03md>)[slicot\_sb03md]: Résolution des équations de Lyapunov temps continu ou discret et estimation de séparation.
- #nlink(<slicot:slicot_sb03od>)[slicot\_sb03od]: Résolution des équations de Lyapunov stables temps continu ou discret (facteur de Cholesky).
- #nlink(<slicot:slicot_sb04md>)[slicot\_sb04md]: Résolution des équations de Sylvester temps continu (méthode Hessenberg-Schur).
- #nlink(<slicot:slicot_sb04qd>)[slicot\_sb04qd]: Résolution des équations de Sylvester temps discret (méthode Hessenberg-Schur).
- #nlink(<slicot:slicot_sb10jd>)[slicot\_sb10jd]: Conversion d'un système d'espace d'état descripteur en forme d'espace d'état régulière.
- #nlink(<slicot:slicot_sg02ad>)[slicot\_sg02ad]: Résolution des équations de Riccati algébriques temps continu ou discret pour les systèmes descripteurs.
- #nlink(<slicot:slicot_tb01id>)[slicot\_tb01id]: Équilibrage d'une matrice système correspondant au triplet (A, B, C).
- #nlink(<slicot:slicot_tg01ad>)[slicot\_tg01ad]: Équilibrage des matrices du pinceau système correspondant au triplet descripteur (A - λ E, B, C).


#nested[
#pagebreak(weak: true)
#include "About_SLICOT_license.typ"
#pagebreak(weak: true)
#include "slicot_ab01od.typ"
#pagebreak(weak: true)
#include "slicot_ab04md.typ"
#pagebreak(weak: true)
#include "slicot_ab07nd.typ"
#pagebreak(weak: true)
#include "slicot_ab08nd.typ"
#pagebreak(weak: true)
#include "slicot_ag08bd.typ"
#pagebreak(weak: true)
#include "slicot_mb02md.typ"
#pagebreak(weak: true)
#include "slicot_mb03od.typ"
#pagebreak(weak: true)
#include "slicot_mb03pd.typ"
#pagebreak(weak: true)
#include "slicot_mb03rd.typ"
#pagebreak(weak: true)
#include "slicot_mb04gd.typ"
#pagebreak(weak: true)
#include "slicot_mb04md.typ"
#pagebreak(weak: true)
#include "slicot_mb05od.typ"
#pagebreak(weak: true)
#include "slicot_mc01td.typ"
#pagebreak(weak: true)
#include "slicot_sb01bd.typ"
#pagebreak(weak: true)
#include "slicot_sb02od.typ"
#pagebreak(weak: true)
#include "slicot_sb03md.typ"
#pagebreak(weak: true)
#include "slicot_sb03od.typ"
#pagebreak(weak: true)
#include "slicot_sb04md.typ"
#pagebreak(weak: true)
#include "slicot_sb04qd.typ"
#pagebreak(weak: true)
#include "slicot_sb10jd.typ"
#pagebreak(weak: true)
#include "slicot_sg02ad.typ"
#pagebreak(weak: true)
#include "slicot_tb01id.typ"
#pagebreak(weak: true)
#include "slicot_tg01ad.typ"
]
